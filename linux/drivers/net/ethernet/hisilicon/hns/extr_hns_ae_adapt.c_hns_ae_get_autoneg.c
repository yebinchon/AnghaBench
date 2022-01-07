
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_handle {int dummy; } ;


 int assert (struct hnae_handle*) ;
 int hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_get_autoneg (int ,int*) ;

__attribute__((used)) static int hns_ae_get_autoneg(struct hnae_handle *handle)
{
 u32 auto_neg;

 assert(handle);

 hns_mac_get_autoneg(hns_get_mac_cb(handle), &auto_neg);

 return auto_neg;
}
