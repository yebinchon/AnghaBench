
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {scalar_t__ duplex; } ;
struct et131x_adapter {scalar_t__ flow; scalar_t__ wanted_flow; TYPE_1__* netdev; } ;
struct TYPE_2__ {struct phy_device* phydev; } ;


 scalar_t__ DUPLEX_HALF ;
 scalar_t__ FLOW_BOTH ;
 void* FLOW_NONE ;
 scalar_t__ FLOW_RXONLY ;
 int et1310_phy_read_mii_bit (struct et131x_adapter*,int,int,char*) ;

__attribute__((used)) static void et1310_config_flow_control(struct et131x_adapter *adapter)
{
 struct phy_device *phydev = adapter->netdev->phydev;

 if (phydev->duplex == DUPLEX_HALF) {
  adapter->flow = FLOW_NONE;
 } else {
  char remote_pause, remote_async_pause;

  et1310_phy_read_mii_bit(adapter, 5, 10, &remote_pause);
  et1310_phy_read_mii_bit(adapter, 5, 11, &remote_async_pause);

  if (remote_pause && remote_async_pause) {
   adapter->flow = adapter->wanted_flow;
  } else if (remote_pause && !remote_async_pause) {
   if (adapter->wanted_flow == FLOW_BOTH)
    adapter->flow = FLOW_BOTH;
   else
    adapter->flow = FLOW_NONE;
  } else if (!remote_pause && !remote_async_pause) {
   adapter->flow = FLOW_NONE;
  } else {
   if (adapter->wanted_flow == FLOW_BOTH)
    adapter->flow = FLOW_RXONLY;
   else
    adapter->flow = FLOW_NONE;
  }
 }
}
