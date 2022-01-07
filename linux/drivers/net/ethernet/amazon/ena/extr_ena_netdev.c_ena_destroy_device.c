
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int dev_up_before_reset; int flags; int reset_reason; struct ena_com_dev* ena_dev; int timer_service; struct net_device* netdev; } ;


 int ENA_FLAG_DEVICE_RUNNING ;
 int ENA_FLAG_DEV_UP ;
 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_NORMAL ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int ena_com_abort_admin_commands (struct ena_com_dev*) ;
 int ena_com_admin_destroy (struct ena_com_dev*) ;
 int ena_com_dev_reset (struct ena_com_dev*,int ) ;
 int ena_com_mmio_reg_read_request_destroy (struct ena_com_dev*) ;
 int ena_com_set_admin_running_state (struct ena_com_dev*,int) ;
 int ena_com_wait_for_abort_completion (struct ena_com_dev*) ;
 int ena_disable_msix (struct ena_adapter*) ;
 int ena_down (struct ena_adapter*) ;
 int ena_free_mgmnt_irq (struct ena_adapter*) ;
 int netif_carrier_off (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ena_destroy_device(struct ena_adapter *adapter, bool graceful)
{
 struct net_device *netdev = adapter->netdev;
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 bool dev_up;

 if (!test_bit(ENA_FLAG_DEVICE_RUNNING, &adapter->flags))
  return;

 netif_carrier_off(netdev);

 del_timer_sync(&adapter->timer_service);

 dev_up = test_bit(ENA_FLAG_DEV_UP, &adapter->flags);
 adapter->dev_up_before_reset = dev_up;
 if (!graceful)
  ena_com_set_admin_running_state(ena_dev, 0);

 if (test_bit(ENA_FLAG_DEV_UP, &adapter->flags))
  ena_down(adapter);




 if (!(test_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags) && dev_up))
  ena_com_dev_reset(adapter->ena_dev, adapter->reset_reason);

 ena_free_mgmnt_irq(adapter);

 ena_disable_msix(adapter);

 ena_com_abort_admin_commands(ena_dev);

 ena_com_wait_for_abort_completion(ena_dev);

 ena_com_admin_destroy(ena_dev);

 ena_com_mmio_reg_read_request_destroy(ena_dev);

 adapter->reset_reason = ENA_REGS_RESET_NORMAL;

 clear_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
 clear_bit(ENA_FLAG_DEVICE_RUNNING, &adapter->flags);
}
