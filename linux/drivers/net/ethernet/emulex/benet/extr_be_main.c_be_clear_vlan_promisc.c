
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct be_adapter {int if_flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int BE_IF_FLAGS_VLAN_PROMISCUOUS ;
 int OFF ;
 int be_cmd_rx_filter (struct be_adapter*,int ,int ) ;
 int dev_info (struct device*,char*) ;

__attribute__((used)) static int be_clear_vlan_promisc(struct be_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;
 int status;

 status = be_cmd_rx_filter(adapter, BE_IF_FLAGS_VLAN_PROMISCUOUS, OFF);
 if (!status) {
  dev_info(dev, "Disabling VLAN promiscuous mode\n");
  adapter->if_flags &= ~BE_IF_FLAGS_VLAN_PROMISCUOUS;
 }
 return status;
}
