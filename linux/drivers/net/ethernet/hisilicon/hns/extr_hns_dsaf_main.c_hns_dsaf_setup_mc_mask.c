
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct dsaf_device {TYPE_1__** mac_cb; } ;
struct TYPE_2__ {int mc_mask; } ;


 int ETH_ALEN ;
 scalar_t__ MAC_IS_BROADCAST (size_t*) ;
 int memcpy (size_t*,int ,int ) ;
 int memset (size_t*,int,int ) ;

__attribute__((used)) static void hns_dsaf_setup_mc_mask(struct dsaf_device *dsaf_dev,
       u8 port_num, u8 *mask, u8 *addr)
{
 if (MAC_IS_BROADCAST(addr))
  memset(mask, 0xff, ETH_ALEN);
 else
  memcpy(mask, dsaf_dev->mac_cb[port_num]->mc_mask, ETH_ALEN);
}
