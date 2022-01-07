
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slic_shmem {int isr_paddr; } ;
struct TYPE_3__ {int pending; } ;
struct slic_device {int napi; int netdev; TYPE_2__* pdev; int link_lock; int speed; int duplex; TYPE_1__ upr_list; struct slic_shmem shmem; } ;
struct TYPE_4__ {int irq; } ;


 int DRV_NAME ;
 int DUPLEX_UNKNOWN ;
 int IRQF_SHARED ;
 int SLIC_ICR_INT_OFF ;
 int SLIC_ICR_INT_ON ;
 int SLIC_REG_ICR ;
 int SLIC_REG_INTAGG ;
 int SLIC_REG_ISP ;
 int SLIC_REG_ISR ;
 int SPEED_UNKNOWN ;
 int lower_32_bits (int ) ;
 int mdelay (int) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netdev_err (int ,char*,...) ;
 int netdev_warn (int ,char*,int) ;
 int request_irq (int ,int ,int ,int ,struct slic_device*) ;
 int slic_card_reset (struct slic_device*) ;
 int slic_flush_write (struct slic_device*) ;
 int slic_free_rx_queue (struct slic_device*) ;
 int slic_free_shmem (struct slic_device*) ;
 int slic_free_stat_queue (struct slic_device*) ;
 int slic_free_tx_queue (struct slic_device*) ;
 int slic_handle_link_change (struct slic_device*) ;
 int slic_init_rx_queue (struct slic_device*) ;
 int slic_init_shmem (struct slic_device*) ;
 int slic_init_stat_queue (struct slic_device*) ;
 int slic_init_tx_queue (struct slic_device*) ;
 int slic_irq ;
 int slic_load_firmware (struct slic_device*) ;
 int slic_load_rcvseq_firmware (struct slic_device*) ;
 int slic_set_link_autoneg (struct slic_device*) ;
 int slic_set_mac_address (struct slic_device*) ;
 int slic_write (struct slic_device*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int slic_init_iface(struct slic_device *sdev)
{
 struct slic_shmem *sm = &sdev->shmem;
 int err;

 sdev->upr_list.pending = 0;

 err = slic_init_shmem(sdev);
 if (err) {
  netdev_err(sdev->netdev, "failed to init shared memory\n");
  return err;
 }

 err = slic_load_firmware(sdev);
 if (err) {
  netdev_err(sdev->netdev, "failed to load firmware\n");
  goto free_sm;
 }

 err = slic_load_rcvseq_firmware(sdev);
 if (err) {
  netdev_err(sdev->netdev,
      "failed to load firmware for receive sequencer\n");
  goto free_sm;
 }

 slic_write(sdev, SLIC_REG_ICR, SLIC_ICR_INT_OFF);
 slic_flush_write(sdev);
 mdelay(1);

 err = slic_init_rx_queue(sdev);
 if (err) {
  netdev_err(sdev->netdev, "failed to init rx queue: %u\n", err);
  goto free_sm;
 }

 err = slic_init_tx_queue(sdev);
 if (err) {
  netdev_err(sdev->netdev, "failed to init tx queue: %u\n", err);
  goto free_rxq;
 }

 err = slic_init_stat_queue(sdev);
 if (err) {
  netdev_err(sdev->netdev, "failed to init status queue: %u\n",
      err);
  goto free_txq;
 }

 slic_write(sdev, SLIC_REG_ISP, lower_32_bits(sm->isr_paddr));
 napi_enable(&sdev->napi);

 slic_write(sdev, SLIC_REG_INTAGG, 0);
 slic_write(sdev, SLIC_REG_ISR, 0);
 slic_flush_write(sdev);

 slic_set_mac_address(sdev);

 spin_lock_bh(&sdev->link_lock);
 sdev->duplex = DUPLEX_UNKNOWN;
 sdev->speed = SPEED_UNKNOWN;
 spin_unlock_bh(&sdev->link_lock);

 slic_set_link_autoneg(sdev);

 err = request_irq(sdev->pdev->irq, slic_irq, IRQF_SHARED, DRV_NAME,
     sdev);
 if (err) {
  netdev_err(sdev->netdev, "failed to request irq: %u\n", err);
  goto disable_napi;
 }

 slic_write(sdev, SLIC_REG_ICR, SLIC_ICR_INT_ON);
 slic_flush_write(sdev);

 err = slic_handle_link_change(sdev);
 if (err)
  netdev_warn(sdev->netdev,
       "failed to set initial link state: %u\n", err);
 return 0;

disable_napi:
 napi_disable(&sdev->napi);
 slic_free_stat_queue(sdev);
free_txq:
 slic_free_tx_queue(sdev);
free_rxq:
 slic_free_rx_queue(sdev);
free_sm:
 slic_free_shmem(sdev);
 slic_card_reset(sdev);

 return err;
}
