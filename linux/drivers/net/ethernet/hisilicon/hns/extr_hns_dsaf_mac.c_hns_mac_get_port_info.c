
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mac_info {int duplex; int speed; int auto_neg; } ;
struct mac_driver {int (* get_info ) (struct mac_driver*,struct mac_info*) ;} ;
struct hns_mac_cb {int dummy; } ;


 int ENODEV ;
 struct mac_driver* hns_mac_get_drv (struct hns_mac_cb*) ;
 int stub1 (struct mac_driver*,struct mac_info*) ;

int hns_mac_get_port_info(struct hns_mac_cb *mac_cb,
     u8 *auto_neg, u16 *speed, u8 *duplex)
{
 struct mac_driver *mac_ctrl_drv;
 struct mac_info info;

 mac_ctrl_drv = hns_mac_get_drv(mac_cb);

 if (!mac_ctrl_drv->get_info)
  return -ENODEV;

 mac_ctrl_drv->get_info(mac_ctrl_drv, &info);
 if (auto_neg)
  *auto_neg = info.auto_neg;
 if (speed)
  *speed = info.speed;
 if (duplex)
  *duplex = info.duplex;

 return 0;
}
