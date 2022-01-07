
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lan9303_alr_cache_entry {int stp_override; int port_map; int mac_addr; } ;
struct lan9303 {int alr_mutex; } ;


 int BIT (int) ;
 int ENOSPC ;
 int ether_addr_copy (int ,int const*) ;
 struct lan9303_alr_cache_entry* lan9303_alr_cache_find_free (struct lan9303*) ;
 struct lan9303_alr_cache_entry* lan9303_alr_cache_find_mac (struct lan9303*,int const*) ;
 int lan9303_alr_set_entry (struct lan9303*,int const*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lan9303_alr_add_port(struct lan9303 *chip, const u8 *mac, int port,
    bool stp_override)
{
 struct lan9303_alr_cache_entry *entr;

 mutex_lock(&chip->alr_mutex);
 entr = lan9303_alr_cache_find_mac(chip, mac);
 if (!entr) {
  entr = lan9303_alr_cache_find_free(chip);
  if (!entr) {
   mutex_unlock(&chip->alr_mutex);
   return -ENOSPC;
  }
  ether_addr_copy(entr->mac_addr, mac);
 }
 entr->port_map |= BIT(port);
 entr->stp_override = stp_override;
 lan9303_alr_set_entry(chip, mac, entr->port_map, stp_override);
 mutex_unlock(&chip->alr_mutex);

 return 0;
}
