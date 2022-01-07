
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lan9303_alr_cache_entry {int mac_addr; } ;
struct lan9303 {struct lan9303_alr_cache_entry* alr_cache; } ;


 int BUILD_BUG_ON_MSG (int,char*) ;
 int LAN9303_NUM_ALR_RECORDS ;
 scalar_t__ ether_addr_equal (int ,int const*) ;

__attribute__((used)) static struct lan9303_alr_cache_entry *
lan9303_alr_cache_find_mac(struct lan9303 *chip, const u8 *mac_addr)
{
 int i;
 struct lan9303_alr_cache_entry *entr = chip->alr_cache;

 BUILD_BUG_ON_MSG(sizeof(struct lan9303_alr_cache_entry) & 1,
    "ether_addr_equal require u16 alignment");

 for (i = 0; i < LAN9303_NUM_ALR_RECORDS; i++, entr++)
  if (ether_addr_equal(entr->mac_addr, mac_addr))
   return entr;

 return ((void*)0);
}
