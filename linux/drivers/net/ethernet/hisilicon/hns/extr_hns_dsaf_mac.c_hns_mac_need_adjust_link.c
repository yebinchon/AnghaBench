
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_driver {int (* need_adjust_link ) (struct mac_driver*,int,int) ;} ;
struct TYPE_2__ {scalar_t__ mac; } ;
struct hns_mac_cb {TYPE_1__ priv; } ;
typedef enum mac_speed { ____Placeholder_mac_speed } mac_speed ;


 int stub1 (struct mac_driver*,int,int) ;

bool hns_mac_need_adjust_link(struct hns_mac_cb *mac_cb, int speed, int duplex)
{
 struct mac_driver *mac_ctrl_drv;

 mac_ctrl_drv = (struct mac_driver *)(mac_cb->priv.mac);

 if (mac_ctrl_drv->need_adjust_link)
  return mac_ctrl_drv->need_adjust_link(mac_ctrl_drv,
   (enum mac_speed)speed, duplex);
 else
  return 1;
}
