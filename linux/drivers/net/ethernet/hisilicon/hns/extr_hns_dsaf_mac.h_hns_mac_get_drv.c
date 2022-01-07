
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ mac; } ;
struct hns_mac_cb {TYPE_1__ priv; } ;



__attribute__((used)) static inline struct mac_driver *hns_mac_get_drv(
 const struct hns_mac_cb *mac_cb)
{
 return (struct mac_driver *)(mac_cb->priv.mac);
}
