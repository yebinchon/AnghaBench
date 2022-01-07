
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct ieee802154_hw {struct adf7242_local* priv; } ;
struct adf7242_local {scalar_t__ tx_stat; int flags; TYPE_1__* spi; int tx_complete; int work; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int CMD_RC_CSMACA ;
 int CMD_RC_PHY_RDY ;
 int ECOMM ;
 int ETIMEDOUT ;
 int FLAG_XMIT ;
 int HZ ;
 scalar_t__ SUCCESS ;
 int adf7242_clear_irqstat (struct adf7242_local*) ;
 int adf7242_cmd (struct adf7242_local*,int ) ;
 int adf7242_cmd_rx (struct adf7242_local*) ;
 int adf7242_write_fbuf (struct adf7242_local*,int ,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*,...) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int reinit_completion (int *) ;
 int set_bit (int ,int *) ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static int adf7242_xmit(struct ieee802154_hw *hw, struct sk_buff *skb)
{
 struct adf7242_local *lp = hw->priv;
 int ret;


 disable_irq(lp->spi->irq);
 set_bit(FLAG_XMIT, &lp->flags);
 cancel_delayed_work_sync(&lp->work);
 reinit_completion(&lp->tx_complete);
 adf7242_cmd(lp, CMD_RC_PHY_RDY);
 adf7242_clear_irqstat(lp);

 ret = adf7242_write_fbuf(lp, skb->data, skb->len);
 if (ret)
  goto err;

 ret = adf7242_cmd(lp, CMD_RC_CSMACA);
 if (ret)
  goto err;
 enable_irq(lp->spi->irq);

 ret = wait_for_completion_interruptible_timeout(&lp->tx_complete,
       HZ / 10);
 if (ret < 0)
  goto err;
 if (ret == 0) {
  dev_dbg(&lp->spi->dev, "Timeout waiting for TX interrupt\n");
  ret = -ETIMEDOUT;
  goto err;
 }

 if (lp->tx_stat != SUCCESS) {
  dev_dbg(&lp->spi->dev,
   "Error xmit: Retry count exceeded Status=0x%x\n",
   lp->tx_stat);
  ret = -ECOMM;
 } else {
  ret = 0;
 }

err:
 clear_bit(FLAG_XMIT, &lp->flags);
 adf7242_cmd_rx(lp);

 return ret;
}
