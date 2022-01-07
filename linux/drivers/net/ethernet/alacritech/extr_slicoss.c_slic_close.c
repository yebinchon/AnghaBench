
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct slic_device {int upr_list; TYPE_1__* pdev; int napi; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int SLIC_GRCR_ADDRAEN ;
 int SLIC_GRCR_CTLEN ;
 int SLIC_GRCR_HASHSIZE ;
 int SLIC_GRCR_HASHSIZE_SHIFT ;
 int SLIC_GRCR_RESET ;
 int SLIC_GXCR_PAUSEEN ;
 int SLIC_GXCR_RESET ;
 int SLIC_ICR_INT_OFF ;
 int SLIC_REG_ICR ;
 int SLIC_REG_ISR ;
 int SLIC_REG_QUIESCE ;
 int SLIC_REG_WPHY ;
 int SLIC_REG_WRCFG ;
 int SLIC_REG_WXCFG ;
 int free_irq (int ,struct slic_device*) ;
 int napi_disable (int *) ;
 struct slic_device* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int slic_card_reset (struct slic_device*) ;
 int slic_clear_upr_list (int *) ;
 int slic_flush_write (struct slic_device*) ;
 int slic_free_rx_queue (struct slic_device*) ;
 int slic_free_shmem (struct slic_device*) ;
 int slic_free_stat_queue (struct slic_device*) ;
 int slic_free_tx_queue (struct slic_device*) ;
 int slic_write (struct slic_device*,int ,int) ;

__attribute__((used)) static int slic_close(struct net_device *dev)
{
 struct slic_device *sdev = netdev_priv(dev);
 u32 val;

 netif_stop_queue(dev);


 napi_disable(&sdev->napi);
 slic_write(sdev, SLIC_REG_ICR, SLIC_ICR_INT_OFF);
 slic_write(sdev, SLIC_REG_ISR, 0);
 slic_flush_write(sdev);

 free_irq(sdev->pdev->irq, sdev);

 val = SLIC_GXCR_RESET | SLIC_GXCR_PAUSEEN;
 slic_write(sdev, SLIC_REG_WXCFG, val);

 val = SLIC_GRCR_RESET | SLIC_GRCR_CTLEN | SLIC_GRCR_ADDRAEN |
       SLIC_GRCR_HASHSIZE << SLIC_GRCR_HASHSIZE_SHIFT;
 slic_write(sdev, SLIC_REG_WRCFG, val);

 val = MII_BMCR << 16 | BMCR_PDOWN;
 slic_write(sdev, SLIC_REG_WPHY, val);
 slic_flush_write(sdev);

 slic_clear_upr_list(&sdev->upr_list);
 slic_write(sdev, SLIC_REG_QUIESCE, 0);

 slic_free_stat_queue(sdev);
 slic_free_tx_queue(sdev);
 slic_free_rx_queue(sdev);
 slic_free_shmem(sdev);

 slic_card_reset(sdev);
 netif_carrier_off(dev);

 return 0;
}
