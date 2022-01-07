
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hns_mac_cb {int mac_id; struct dsaf_device* dsaf_dev; } ;
struct dsaf_device {int dummy; } ;


 int hns_dsaf_clr_mac_mc_port (struct dsaf_device*,int ,int ) ;
 int hns_mac_get_inner_port_num (struct hns_mac_cb*,int,int *) ;

int hns_mac_clr_multicast(struct hns_mac_cb *mac_cb, int vfn)
{
 struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;
 u8 port_num;
 int ret = hns_mac_get_inner_port_num(mac_cb, vfn, &port_num);

 if (ret)
  return ret;

 return hns_dsaf_clr_mac_mc_port(dsaf_dev, mac_cb->mac_id, port_num);
}
