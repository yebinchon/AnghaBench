
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct atl1e_adapter {int hw; int napi; int flags; struct net_device* netdev; } ;


 int AT_READ_REG (int *,int ) ;
 int AT_WRITE_REG (int *,int ,int) ;
 int EIO ;
 int MASTER_CTRL_MANUAL_INT ;
 int REG_MASTER_CTRL ;
 int __AT_DOWN ;
 scalar_t__ atl1e_configure (struct atl1e_adapter*) ;
 int atl1e_init_hw (int *) ;
 int atl1e_init_ring_ptrs (struct atl1e_adapter*) ;
 int atl1e_irq_enable (struct atl1e_adapter*) ;
 int atl1e_restore_vlan (struct atl1e_adapter*) ;
 int atl1e_set_multi (struct net_device*) ;
 int clear_bit (int ,int *) ;
 int napi_enable (int *) ;

int atl1e_up(struct atl1e_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err = 0;
 u32 val;


 err = atl1e_init_hw(&adapter->hw);
 if (err) {
  err = -EIO;
  return err;
 }
 atl1e_init_ring_ptrs(adapter);
 atl1e_set_multi(netdev);
 atl1e_restore_vlan(adapter);

 if (atl1e_configure(adapter)) {
  err = -EIO;
  goto err_up;
 }

 clear_bit(__AT_DOWN, &adapter->flags);
 napi_enable(&adapter->napi);
 atl1e_irq_enable(adapter);
 val = AT_READ_REG(&adapter->hw, REG_MASTER_CTRL);
 AT_WRITE_REG(&adapter->hw, REG_MASTER_CTRL,
        val | MASTER_CTRL_MANUAL_INT);

err_up:
 return err;
}
