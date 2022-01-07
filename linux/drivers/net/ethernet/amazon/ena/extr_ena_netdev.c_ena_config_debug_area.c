
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ena_adapter {int ena_dev; int netdev; } ;


 int EOPNOTSUPP ;
 int ETH_GSTRING_LEN ;
 int ETH_SS_STATS ;
 int drv ;
 int ena_com_allocate_debug_area (int ,int) ;
 int ena_com_delete_debug_area (int ) ;
 int ena_com_set_host_attributes (int ) ;
 int ena_get_sset_count (int ,int ) ;
 int netif_err (struct ena_adapter*,int ,int ,char*) ;
 int netif_warn (struct ena_adapter*,int ,int ,char*) ;
 int pr_err (char*) ;

__attribute__((used)) static void ena_config_debug_area(struct ena_adapter *adapter)
{
 u32 debug_area_size;
 int rc, ss_count;

 ss_count = ena_get_sset_count(adapter->netdev, ETH_SS_STATS);
 if (ss_count <= 0) {
  netif_err(adapter, drv, adapter->netdev,
     "SS count is negative\n");
  return;
 }


 debug_area_size = ss_count * ETH_GSTRING_LEN + sizeof(u64) * ss_count;

 rc = ena_com_allocate_debug_area(adapter->ena_dev, debug_area_size);
 if (rc) {
  pr_err("Cannot allocate debug area\n");
  return;
 }

 rc = ena_com_set_host_attributes(adapter->ena_dev);
 if (rc) {
  if (rc == -EOPNOTSUPP)
   netif_warn(adapter, drv, adapter->netdev,
       "Cannot set host attributes\n");
  else
   netif_err(adapter, drv, adapter->netdev,
      "Cannot set host attributes\n");
  goto err;
 }

 return;
err:
 ena_com_delete_debug_area(adapter->ena_dev);
}
