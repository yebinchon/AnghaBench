
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_priv {scalar_t__ eeprom; } ;
typedef int __le16 ;


 int IPW_DEBUG_TRACE (char*) ;
 int cpu_to_le16 (int ) ;
 int eeprom_read_u16 (struct ipw_priv*,int ) ;

__attribute__((used)) static void ipw_read_eeprom(struct ipw_priv *priv)
{
 int i;
 __le16 *eeprom = (__le16 *) priv->eeprom;

 IPW_DEBUG_TRACE(">>\n");


 for (i = 0; i < 128; i++)
  eeprom[i] = cpu_to_le16(eeprom_read_u16(priv, (u8) i));

 IPW_DEBUG_TRACE("<<\n");
}
