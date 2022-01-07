
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vendor_pn; int vendor_name; } ;
struct be_adapter {size_t phy_state; int flags; TYPE_2__ phy; int port_name; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int BE_FLAGS_PHY_MISCONFIGURED ;
 int be_cmd_query_sfp_info (struct be_adapter*) ;
 int * be_misconfig_evt_port_state ;
 int dev_err (int *,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void be_log_sfp_info(struct be_adapter *adapter)
{
 int status;

 status = be_cmd_query_sfp_info(adapter);
 if (!status) {
  dev_err(&adapter->pdev->dev,
   "Port %c: %s Vendor: %s part no: %s",
   adapter->port_name,
   be_misconfig_evt_port_state[adapter->phy_state],
   adapter->phy.vendor_name,
   adapter->phy.vendor_pn);
 }
 adapter->flags &= ~BE_FLAGS_PHY_MISCONFIGURED;
}
