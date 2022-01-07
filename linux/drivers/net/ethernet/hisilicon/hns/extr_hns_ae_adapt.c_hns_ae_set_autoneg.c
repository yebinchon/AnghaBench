
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hnae_handle {int dummy; } ;


 int assert (struct hnae_handle*) ;
 int hns_get_mac_cb (struct hnae_handle*) ;
 int hns_mac_set_autoneg (int ,int ) ;

__attribute__((used)) static int hns_ae_set_autoneg(struct hnae_handle *handle, u8 enable)
{
 assert(handle);

 return hns_mac_set_autoneg(hns_get_mac_cb(handle), enable);
}
