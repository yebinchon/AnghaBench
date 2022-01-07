
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct atl2_adapter {int hw; int flags; struct net_device* netdev; } ;


 int ATL2_READ_REG (int *,int ) ;
 int ATL2_WRITE_REG (int *,int ,int) ;
 int EIO ;
 int MASTER_CTRL_MANUAL_INT ;
 int REG_MASTER_CTRL ;
 int __ATL2_DOWN ;
 scalar_t__ atl2_configure (struct atl2_adapter*) ;
 int atl2_init_hw (int *) ;
 int atl2_irq_enable (struct atl2_adapter*) ;
 int atl2_restore_vlan (struct atl2_adapter*) ;
 int atl2_set_multi (struct net_device*) ;
 int clear_bit (int ,int *) ;
 int init_ring_ptrs (struct atl2_adapter*) ;

__attribute__((used)) static int atl2_up(struct atl2_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err = 0;
 u32 val;



 err = atl2_init_hw(&adapter->hw);
 if (err) {
  err = -EIO;
  return err;
 }

 atl2_set_multi(netdev);
 init_ring_ptrs(adapter);

 atl2_restore_vlan(adapter);

 if (atl2_configure(adapter)) {
  err = -EIO;
  goto err_up;
 }

 clear_bit(__ATL2_DOWN, &adapter->flags);

 val = ATL2_READ_REG(&adapter->hw, REG_MASTER_CTRL);
 ATL2_WRITE_REG(&adapter->hw, REG_MASTER_CTRL, val |
  MASTER_CTRL_MANUAL_INT);

 atl2_irq_enable(adapter);

err_up:
 return err;
}
