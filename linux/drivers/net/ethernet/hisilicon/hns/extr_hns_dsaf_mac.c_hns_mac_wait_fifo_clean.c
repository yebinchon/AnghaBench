
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_driver {int (* wait_fifo_clean ) (struct mac_driver*) ;} ;
struct hns_mac_cb {int dummy; } ;


 struct mac_driver* hns_mac_get_drv (struct hns_mac_cb*) ;
 int stub1 (struct mac_driver*) ;

int hns_mac_wait_fifo_clean(struct hns_mac_cb *mac_cb)
{
 struct mac_driver *drv = hns_mac_get_drv(mac_cb);

 if (drv->wait_fifo_clean)
  return drv->wait_fifo_clean(drv);

 return 0;
}
