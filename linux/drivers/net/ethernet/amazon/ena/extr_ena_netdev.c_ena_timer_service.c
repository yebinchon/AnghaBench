
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct timer_list {int dummy; } ;
struct ena_admin_host_info {int dummy; } ;
struct ena_adapter {int timer_service; int reset_task; int netdev; int flags; TYPE_2__* ena_dev; } ;
struct TYPE_3__ {struct ena_admin_host_info* host_info; int * debug_area_virt_addr; } ;
struct TYPE_4__ {TYPE_1__ host_attr; } ;


 int ENA_FLAG_TRIGGER_RESET ;
 scalar_t__ HZ ;
 struct ena_adapter* adapter ;
 int check_for_admin_com_state (struct ena_adapter*) ;
 int check_for_empty_rx_ring (struct ena_adapter*) ;
 int check_for_missing_completions (struct ena_adapter*) ;
 int check_for_missing_keep_alive (struct ena_adapter*) ;
 int drv ;
 int ena_dump_stats_to_buf (struct ena_adapter*,int *) ;
 int ena_dump_stats_to_dmesg (struct ena_adapter*) ;
 int ena_update_host_info (struct ena_admin_host_info*,int ) ;
 int ena_wq ;
 struct ena_adapter* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_err (struct ena_adapter*,int ,int ,char*) ;
 int queue_work (int ,int *) ;
 int test_bit (int ,int *) ;
 int timer_service ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ena_timer_service(struct timer_list *t)
{
 struct ena_adapter *adapter = from_timer(adapter, t, timer_service);
 u8 *debug_area = adapter->ena_dev->host_attr.debug_area_virt_addr;
 struct ena_admin_host_info *host_info =
  adapter->ena_dev->host_attr.host_info;

 check_for_missing_keep_alive(adapter);

 check_for_admin_com_state(adapter);

 check_for_missing_completions(adapter);

 check_for_empty_rx_ring(adapter);

 if (debug_area)
  ena_dump_stats_to_buf(adapter, debug_area);

 if (host_info)
  ena_update_host_info(host_info, adapter->netdev);

 if (unlikely(test_bit(ENA_FLAG_TRIGGER_RESET, &adapter->flags))) {
  netif_err(adapter, drv, adapter->netdev,
     "Trigger reset is on\n");
  ena_dump_stats_to_dmesg(adapter);
  queue_work(ena_wq, &adapter->reset_task);
  return;
 }


 mod_timer(&adapter->timer_service, jiffies + HZ);
}
