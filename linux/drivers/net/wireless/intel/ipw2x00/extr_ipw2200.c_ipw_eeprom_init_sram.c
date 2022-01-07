
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int * eeprom; } ;


 size_t EEPROM_VERSION ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_DEBUG_TRACE (char*) ;
 scalar_t__ IPW_EEPROM_DATA ;
 int IPW_EEPROM_IMAGE_SIZE ;
 int IPW_EEPROM_LOAD_DISABLE ;
 int ipw_write32 (struct ipw_priv*,int ,int) ;
 int ipw_write8 (struct ipw_priv*,scalar_t__,int ) ;

__attribute__((used)) static void ipw_eeprom_init_sram(struct ipw_priv *priv)
{
 int i;

 IPW_DEBUG_TRACE(">>\n");






 if (priv->eeprom[EEPROM_VERSION] != 0) {
  IPW_DEBUG_INFO("Writing EEPROM data into SRAM\n");


  for (i = 0; i < IPW_EEPROM_IMAGE_SIZE; i++)
   ipw_write8(priv, IPW_EEPROM_DATA + i, priv->eeprom[i]);


  ipw_write32(priv, IPW_EEPROM_LOAD_DISABLE, 0);
 } else {
  IPW_DEBUG_INFO("Enabling FW initialization of SRAM\n");


  ipw_write32(priv, IPW_EEPROM_LOAD_DISABLE, 1);
 }

 IPW_DEBUG_TRACE("<<\n");
}
