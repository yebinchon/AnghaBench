
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mac_driver {TYPE_1__* mac_cb; } ;
struct TYPE_2__ {scalar_t__ mac_type; } ;


 scalar_t__ HNAE_PORT_DEBUG ;
 int hns_gmac_set_uc_match (void*,int ) ;

__attribute__((used)) static void hns_gmac_set_promisc(void *mac_drv, u8 en)
{
 struct mac_driver *drv = mac_drv;

 if (drv->mac_cb->mac_type == HNAE_PORT_DEBUG)
  hns_gmac_set_uc_match(mac_drv, en);
}
