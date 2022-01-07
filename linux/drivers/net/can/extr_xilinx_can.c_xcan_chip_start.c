
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ctrlmode; int state; } ;
struct TYPE_3__ {int flags; } ;
struct xcan_priv {TYPE_2__ can; int (* read_reg ) (struct xcan_priv*,int ) ;int (* write_reg ) (struct xcan_priv*,int ,int) ;TYPE_1__ devtype; } ;
struct net_device {int dummy; } ;


 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_STATE_ERROR_ACTIVE ;
 int XCAN_AFR_EXT_OFFSET ;
 int XCAN_FLAG_EXT_FILTERS ;
 int XCAN_FLAG_RXMNF ;
 int XCAN_IER_OFFSET ;
 int XCAN_IXR_ARBLST_MASK ;
 int XCAN_IXR_BSOFF_MASK ;
 int XCAN_IXR_ERROR_MASK ;
 int XCAN_IXR_RXMNF_MASK ;
 int XCAN_IXR_RXOFLW_MASK ;
 int XCAN_IXR_SLP_MASK ;
 int XCAN_IXR_TXOK_MASK ;
 int XCAN_IXR_WKUP_MASK ;
 int XCAN_MSR_LBACK_MASK ;
 int XCAN_MSR_OFFSET ;
 int XCAN_SRR_CEN_MASK ;
 int XCAN_SRR_OFFSET ;
 int XCAN_SR_OFFSET ;
 int netdev_dbg (struct net_device*,char*,int ) ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 int set_reset_mode (struct net_device*) ;
 int stub1 (struct xcan_priv*,int ,int) ;
 int stub2 (struct xcan_priv*,int ,int) ;
 int stub3 (struct xcan_priv*,int ,int) ;
 int stub4 (struct xcan_priv*,int ,int) ;
 int stub5 (struct xcan_priv*,int ) ;
 int xcan_rx_int_mask (struct xcan_priv*) ;
 int xcan_set_bittiming (struct net_device*) ;

__attribute__((used)) static int xcan_chip_start(struct net_device *ndev)
{
 struct xcan_priv *priv = netdev_priv(ndev);
 u32 reg_msr;
 int err;
 u32 ier;


 err = set_reset_mode(ndev);
 if (err < 0)
  return err;

 err = xcan_set_bittiming(ndev);
 if (err < 0)
  return err;


 ier = XCAN_IXR_TXOK_MASK | XCAN_IXR_BSOFF_MASK |
  XCAN_IXR_WKUP_MASK | XCAN_IXR_SLP_MASK |
  XCAN_IXR_ERROR_MASK | XCAN_IXR_RXOFLW_MASK |
  XCAN_IXR_ARBLST_MASK | xcan_rx_int_mask(priv);

 if (priv->devtype.flags & XCAN_FLAG_RXMNF)
  ier |= XCAN_IXR_RXMNF_MASK;

 priv->write_reg(priv, XCAN_IER_OFFSET, ier);


 if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK) {
  reg_msr = XCAN_MSR_LBACK_MASK;
 } else {
  reg_msr = 0x0;
 }




 if (priv->devtype.flags & XCAN_FLAG_EXT_FILTERS)
  priv->write_reg(priv, XCAN_AFR_EXT_OFFSET, 0x00000001);

 priv->write_reg(priv, XCAN_MSR_OFFSET, reg_msr);
 priv->write_reg(priv, XCAN_SRR_OFFSET, XCAN_SRR_CEN_MASK);

 netdev_dbg(ndev, "status:#x%08x\n",
     priv->read_reg(priv, XCAN_SR_OFFSET));

 priv->can.state = CAN_STATE_ERROR_ACTIVE;
 return 0;
}
