
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct status_block {scalar_t__ status_completion_producer_index; } ;
struct TYPE_4__ {struct status_block* gen; TYPE_1__* bnx2; } ;
struct cnic_local {int status_blk_num; TYPE_2__ status_blk; int cnic_irq_task; int last_status_idx; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct TYPE_3__ {scalar_t__ status_completion_producer_index; int status_idx; } ;


 int BNX2_HC_CMD_TICKS_OFF ;
 int BNX2_HC_COALESCE_NOW ;
 int BNX2_HC_COMMAND ;
 int BNX2_HC_COMMAND_COAL_NOW_WO_INT ;
 int BNX2_HC_COMP_PROD_TRIP_OFF ;
 int BNX2_HC_COM_TICKS_OFF ;
 int BNX2_HC_SB_CONFIG_1 ;
 int BNX2_HC_SB_CONFIG_1_ONE_SHOT ;
 int BNX2_HC_SB_CONFIG_SIZE ;
 int CNIC_DRV_STATE_USING_MSIX ;
 int CNIC_RD (struct cnic_dev*,int) ;
 int CNIC_WR (struct cnic_dev*,int,int) ;
 int EBUSY ;
 int barrier () ;
 int cnic_free_irq (struct cnic_dev*) ;
 int cnic_request_irq (struct cnic_dev*) ;
 int cnic_service_bnx2_msix ;
 int netdev_err (int ,char*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int cnic_init_bnx2_irq(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;

 if (ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX) {
  int err, i = 0;
  int sblk_num = cp->status_blk_num;
  u32 base = ((sblk_num - 1) * BNX2_HC_SB_CONFIG_SIZE) +
      BNX2_HC_SB_CONFIG_1;

  CNIC_WR(dev, base, BNX2_HC_SB_CONFIG_1_ONE_SHOT);

  CNIC_WR(dev, base + BNX2_HC_COMP_PROD_TRIP_OFF, (2 << 16) | 8);
  CNIC_WR(dev, base + BNX2_HC_COM_TICKS_OFF, (64 << 16) | 220);
  CNIC_WR(dev, base + BNX2_HC_CMD_TICKS_OFF, (64 << 16) | 220);

  cp->last_status_idx = cp->status_blk.bnx2->status_idx;
  tasklet_init(&cp->cnic_irq_task, cnic_service_bnx2_msix,
        (unsigned long) dev);
  err = cnic_request_irq(dev);
  if (err)
   return err;

  while (cp->status_blk.bnx2->status_completion_producer_index &&
         i < 10) {
   CNIC_WR(dev, BNX2_HC_COALESCE_NOW,
    1 << (11 + sblk_num));
   udelay(10);
   i++;
   barrier();
  }
  if (cp->status_blk.bnx2->status_completion_producer_index) {
   cnic_free_irq(dev);
   goto failed;
  }

 } else {
  struct status_block *sblk = cp->status_blk.gen;
  u32 hc_cmd = CNIC_RD(dev, BNX2_HC_COMMAND);
  int i = 0;

  while (sblk->status_completion_producer_index && i < 10) {
   CNIC_WR(dev, BNX2_HC_COMMAND,
    hc_cmd | BNX2_HC_COMMAND_COAL_NOW_WO_INT);
   udelay(10);
   i++;
   barrier();
  }
  if (sblk->status_completion_producer_index)
   goto failed;

 }
 return 0;

failed:
 netdev_err(dev->netdev, "KCQ index not resetting to 0\n");
 return -EBUSY;
}
