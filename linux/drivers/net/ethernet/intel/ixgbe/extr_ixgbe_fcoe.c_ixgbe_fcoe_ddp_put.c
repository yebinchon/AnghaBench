
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct net_device {size_t fcoe_ddp_xid; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_fcoe_ddp {int len; int * pool; int udp; int udl; int sgc; scalar_t__ sgl; int err; } ;
struct ixgbe_fcoe {int lock; struct ixgbe_fcoe_ddp* ddp; } ;
struct ixgbe_adapter {TYPE_2__* pdev; struct ixgbe_hw hw; struct ixgbe_fcoe fcoe; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int IXGBE_FCBUFF ;
 int IXGBE_FCBUFF_VALID ;
 int IXGBE_FCDDC (int,size_t) ;
 int IXGBE_FCDFC (int,size_t) ;
 int IXGBE_FCDMARW ;
 size_t IXGBE_FCDMARW_RE ;
 size_t IXGBE_FCDMARW_WE ;
 int IXGBE_FCFLT ;
 int IXGBE_FCFLTRW ;
 size_t IXGBE_FCFLTRW_WE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,size_t) ;
 int dma_pool_free (int *,int ,int ) ;
 int dma_unmap_sg (int *,scalar_t__,int ,int ) ;
 int ixgbe_fcoe_clear_ddp (struct ixgbe_fcoe_ddp*) ;
 scalar_t__ ixgbe_mac_X550 ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int usleep_range (int,int) ;

int ixgbe_fcoe_ddp_put(struct net_device *netdev, u16 xid)
{
 int len;
 struct ixgbe_fcoe *fcoe;
 struct ixgbe_adapter *adapter;
 struct ixgbe_fcoe_ddp *ddp;
 struct ixgbe_hw *hw;
 u32 fcbuff;

 if (!netdev)
  return 0;

 if (xid >= netdev->fcoe_ddp_xid)
  return 0;

 adapter = netdev_priv(netdev);
 fcoe = &adapter->fcoe;
 ddp = &fcoe->ddp[xid];
 if (!ddp->udl)
  return 0;

 hw = &adapter->hw;
 len = ddp->len;

 if (!ddp->err)
  goto skip_ddpinv;

 if (hw->mac.type == ixgbe_mac_X550) {


  IXGBE_WRITE_REG(hw, IXGBE_FCDFC(0, xid), 0);
  IXGBE_WRITE_REG(hw, IXGBE_FCDFC(3, xid),
    (xid | IXGBE_FCFLTRW_WE));


  IXGBE_WRITE_REG(hw, IXGBE_FCDDC(2, xid), 0);


  IXGBE_WRITE_REG(hw, IXGBE_FCDDC(3, xid),
    (xid | IXGBE_FCDMARW_WE));


  IXGBE_WRITE_REG(hw, IXGBE_FCDDC(3, xid),
    (xid | IXGBE_FCDMARW_RE));
  fcbuff = IXGBE_READ_REG(hw, IXGBE_FCDDC(2, xid));
 } else {

  spin_lock_bh(&fcoe->lock);
  IXGBE_WRITE_REG(hw, IXGBE_FCFLT, 0);
  IXGBE_WRITE_REG(hw, IXGBE_FCFLTRW,
    (xid | IXGBE_FCFLTRW_WE));
  IXGBE_WRITE_REG(hw, IXGBE_FCBUFF, 0);
  IXGBE_WRITE_REG(hw, IXGBE_FCDMARW,
    (xid | IXGBE_FCDMARW_WE));


  IXGBE_WRITE_REG(hw, IXGBE_FCDMARW,
    (xid | IXGBE_FCDMARW_RE));
  fcbuff = IXGBE_READ_REG(hw, IXGBE_FCBUFF);
  spin_unlock_bh(&fcoe->lock);
  }

 if (fcbuff & IXGBE_FCBUFF_VALID)
  usleep_range(100, 150);

skip_ddpinv:
 if (ddp->sgl)
  dma_unmap_sg(&adapter->pdev->dev, ddp->sgl, ddp->sgc,
        DMA_FROM_DEVICE);
 if (ddp->pool) {
  dma_pool_free(ddp->pool, ddp->udl, ddp->udp);
  ddp->pool = ((void*)0);
 }

 ixgbe_fcoe_clear_ddp(ddp);

 return len;
}
