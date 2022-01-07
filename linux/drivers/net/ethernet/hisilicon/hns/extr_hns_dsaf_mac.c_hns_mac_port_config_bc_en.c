
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hns_mac_cb {scalar_t__ mac_type; int mac_id; struct dsaf_device* dsaf_dev; } ;
struct dsaf_drv_mac_single_dest_entry {int port_num; int in_port_num; int in_vlan_id; int addr; } ;
struct dsaf_device {int dummy; } ;


 scalar_t__ HNAE_PORT_DEBUG ;
 int HNS_DSAF_IS_DEBUG (struct dsaf_device*) ;
 int eth_broadcast_addr (int ) ;
 int hns_dsaf_add_mac_mc_port (struct dsaf_device*,struct dsaf_drv_mac_single_dest_entry*) ;
 int hns_dsaf_del_mac_mc_port (struct dsaf_device*,struct dsaf_drv_mac_single_dest_entry*) ;

__attribute__((used)) static int hns_mac_port_config_bc_en(struct hns_mac_cb *mac_cb,
         u32 port_num, u16 vlan_id, bool enable)
{
 int ret;
 struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;
 struct dsaf_drv_mac_single_dest_entry mac_entry;


 if (mac_cb->mac_type == HNAE_PORT_DEBUG)
  return 0;

 if (!HNS_DSAF_IS_DEBUG(dsaf_dev)) {
  eth_broadcast_addr(mac_entry.addr);
  mac_entry.in_vlan_id = vlan_id;
  mac_entry.in_port_num = mac_cb->mac_id;
  mac_entry.port_num = port_num;

  if (!enable)
   ret = hns_dsaf_del_mac_mc_port(dsaf_dev, &mac_entry);
  else
   ret = hns_dsaf_add_mac_mc_port(dsaf_dev, &mac_entry);
  return ret;
 }

 return 0;
}
