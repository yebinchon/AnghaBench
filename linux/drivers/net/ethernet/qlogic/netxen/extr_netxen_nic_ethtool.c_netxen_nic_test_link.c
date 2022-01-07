
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pci_func; int revision_id; } ;
struct netxen_adapter {int physical_port; TYPE_1__ ahw; } ;
struct net_device {int dummy; } ;


 int CRB_XG_STATE ;
 int CRB_XG_STATE_P3 ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 int XG_LINK_STATE_P3 (int ,int) ;
 int XG_LINK_UP ;
 int XG_LINK_UP_P3 ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netxen_nic_test_link(struct net_device *dev)
{
 struct netxen_adapter *adapter = netdev_priv(dev);
 u32 val, port;

 port = adapter->physical_port;
 if (NX_IS_REVISION_P3(adapter->ahw.revision_id)) {
  val = NXRD32(adapter, CRB_XG_STATE_P3);
  val = XG_LINK_STATE_P3(adapter->ahw.pci_func, val);
  return (val == XG_LINK_UP_P3) ? 0 : 1;
 } else {
  val = NXRD32(adapter, CRB_XG_STATE);
  val = (val >> port*8) & 0xff;
  return (val == XG_LINK_UP) ? 0 : 1;
 }
}
