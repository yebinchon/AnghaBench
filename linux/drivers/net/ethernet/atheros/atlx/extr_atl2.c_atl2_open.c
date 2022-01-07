
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct atl2_adapter {int hw; int watchdog_timer; int flags; } ;


 int ATL2_READ_REG (int *,int ) ;
 int ATL2_WRITE_REG (int *,int ,int) ;
 int EBUSY ;
 int EIO ;
 int HZ ;
 int MASTER_CTRL_MANUAL_INT ;
 int REG_MASTER_CTRL ;
 int __ATL2_DOWN ;
 int __ATL2_TESTING ;
 scalar_t__ atl2_configure (struct atl2_adapter*) ;
 int atl2_free_ring_resources (struct atl2_adapter*) ;
 int atl2_init_hw (int *) ;
 int atl2_irq_enable (struct atl2_adapter*) ;
 int atl2_request_irq (struct atl2_adapter*) ;
 int atl2_reset_hw (int *) ;
 int atl2_restore_vlan (struct atl2_adapter*) ;
 int atl2_set_multi (struct net_device*) ;
 int atl2_setup_ring_resources (struct atl2_adapter*) ;
 int clear_bit (int ,int *) ;
 int init_ring_ptrs (struct atl2_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;
 int round_jiffies (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int atl2_open(struct net_device *netdev)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);
 int err;
 u32 val;


 if (test_bit(__ATL2_TESTING, &adapter->flags))
  return -EBUSY;


 err = atl2_setup_ring_resources(adapter);
 if (err)
  return err;

 err = atl2_init_hw(&adapter->hw);
 if (err) {
  err = -EIO;
  goto err_init_hw;
 }


 atl2_set_multi(netdev);
 init_ring_ptrs(adapter);

 atl2_restore_vlan(adapter);

 if (atl2_configure(adapter)) {
  err = -EIO;
  goto err_config;
 }

 err = atl2_request_irq(adapter);
 if (err)
  goto err_req_irq;

 clear_bit(__ATL2_DOWN, &adapter->flags);

 mod_timer(&adapter->watchdog_timer, round_jiffies(jiffies + 4*HZ));

 val = ATL2_READ_REG(&adapter->hw, REG_MASTER_CTRL);
 ATL2_WRITE_REG(&adapter->hw, REG_MASTER_CTRL,
  val | MASTER_CTRL_MANUAL_INT);

 atl2_irq_enable(adapter);

 return 0;

err_init_hw:
err_req_irq:
err_config:
 atl2_free_ring_resources(adapter);
 atl2_reset_hw(&adapter->hw);

 return err;
}
