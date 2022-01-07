
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_priv {int dummy; } ;


 int EEPROM_MAC_ADDRESS ;
 int ETH_ALEN ;
 int * il_eeprom_query_addr (struct il_priv const*,int ) ;
 int memcpy (int *,int const*,int ) ;

void
il4965_eeprom_get_mac(const struct il_priv *il, u8 * mac)
{
 const u8 *addr = il_eeprom_query_addr(il,
           EEPROM_MAC_ADDRESS);
 memcpy(mac, addr, ETH_ALEN);
}
