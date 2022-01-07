
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_adapter {int* pmac_id; scalar_t__ vlans_added; TYPE_1__* netdev; int dev_mac; } ;
struct TYPE_2__ {int dev_addr; } ;


 int BE_IF_FILT_FLAGS_BASIC ;
 int ON ;
 int __be_set_rx_mode (struct be_adapter*) ;
 int be_cmd_rx_filter (struct be_adapter*,int ,int ) ;
 int be_dev_mac_add (struct be_adapter*,int ) ;
 int be_dev_mac_del (struct be_adapter*,int) ;
 int be_vid_config (struct be_adapter*) ;
 int ether_addr_copy (int ,int ) ;
 int ether_addr_equal (int ,int ) ;
 int is_zero_ether_addr (int ) ;

__attribute__((used)) static int be_enable_if_filters(struct be_adapter *adapter)
{
 int status;

 status = be_cmd_rx_filter(adapter, BE_IF_FILT_FLAGS_BASIC, ON);
 if (status)
  return status;





 if (!ether_addr_equal(adapter->dev_mac, adapter->netdev->dev_addr)) {
  int old_pmac_id = -1;


  if (!is_zero_ether_addr(adapter->dev_mac))
   old_pmac_id = adapter->pmac_id[0];

  status = be_dev_mac_add(adapter, adapter->netdev->dev_addr);
  if (status)
   return status;




  if (old_pmac_id >= 0 && old_pmac_id != adapter->pmac_id[0])
   be_dev_mac_del(adapter, old_pmac_id);

  ether_addr_copy(adapter->dev_mac, adapter->netdev->dev_addr);
 }

 if (adapter->vlans_added)
  be_vid_config(adapter);

 __be_set_rx_mode(adapter);

 return 0;
}
