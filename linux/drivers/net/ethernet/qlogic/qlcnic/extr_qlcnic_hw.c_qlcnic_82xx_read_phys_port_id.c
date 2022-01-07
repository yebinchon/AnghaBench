
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {int flags; TYPE_1__* ahw; } ;
struct TYPE_2__ {int phys_port_id; int physical_port; } ;


 int ETH_ALEN ;
 int QLCNIC_HAS_PHYS_PORT_ID ;
 int memcpy (int ,int *,int) ;
 int qlcnic_get_mac_address (struct qlcnic_adapter*,int *,int ) ;

int qlcnic_82xx_read_phys_port_id(struct qlcnic_adapter *adapter)
{
 u8 mac[ETH_ALEN];
 int ret;

 ret = qlcnic_get_mac_address(adapter, mac,
         adapter->ahw->physical_port);
 if (ret)
  return ret;

 memcpy(adapter->ahw->phys_port_id, mac, ETH_ALEN);
 adapter->flags |= QLCNIC_HAS_PHYS_PORT_ID;

 return 0;
}
