
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hns_mac_cb {int mac_id; struct dsaf_device* dsaf_dev; } ;
struct dsaf_drv_mac_single_dest_entry {int port_num; int in_port_num; scalar_t__ in_vlan_id; int addr; } ;
struct TYPE_2__ {int name; } ;
struct dsaf_device {TYPE_1__ ae_dev; int dev; } ;


 int HNS_DSAF_IS_DEBUG (struct dsaf_device*) ;
 int dev_err (int ,char*,int ,int ,int) ;
 int hns_dsaf_add_mac_mc_port (struct dsaf_device*,struct dsaf_drv_mac_single_dest_entry*) ;
 int hns_dsaf_del_mac_mc_port (struct dsaf_device*,struct dsaf_drv_mac_single_dest_entry*) ;
 int memcpy (int ,char*,int) ;

int hns_mac_set_multi(struct hns_mac_cb *mac_cb,
        u32 port_num, char *addr, bool enable)
{
 int ret;
 struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;
 struct dsaf_drv_mac_single_dest_entry mac_entry;

 if (!HNS_DSAF_IS_DEBUG(dsaf_dev) && addr) {
  memcpy(mac_entry.addr, addr, sizeof(mac_entry.addr));
  mac_entry.in_vlan_id = 0;
  mac_entry.in_port_num = mac_cb->mac_id;
  mac_entry.port_num = port_num;

  if (!enable)
   ret = hns_dsaf_del_mac_mc_port(dsaf_dev, &mac_entry);
  else
   ret = hns_dsaf_add_mac_mc_port(dsaf_dev, &mac_entry);
  if (ret) {
   dev_err(dsaf_dev->dev,
    "set mac mc port failed, %s mac%d ret = %#x!\n",
    mac_cb->dsaf_dev->ae_dev.name,
    mac_cb->mac_id, ret);
   return ret;
  }
 }

 return 0;
}
