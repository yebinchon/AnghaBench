
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_ALEN ;
 int memcmp (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static inline int mac_in_list(unsigned char *list, int list_len,
         unsigned char *mac)
{
 while (list_len) {
  if (!memcmp(list, mac, ETH_ALEN))
   return 1;
  list += ETH_ALEN;
  list_len--;
 }
 return 0;
}
