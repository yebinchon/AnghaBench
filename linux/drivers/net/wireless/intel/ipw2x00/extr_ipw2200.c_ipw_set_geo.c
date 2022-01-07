
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ipw_priv {int ieee; int * eeprom; } ;
struct TYPE_4__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t EEPROM_COUNTRY_CODE ;
 int IPW_WARNING (char*,int ,int ,int ) ;
 TYPE_1__* ipw_geos ;
 int libipw_set_geo (int ,TYPE_1__*) ;
 int memcmp (int *,int ,int) ;

__attribute__((used)) static void ipw_set_geo(struct ipw_priv *priv)
{
 int j;

 for (j = 0; j < ARRAY_SIZE(ipw_geos); j++) {
  if (!memcmp(&priv->eeprom[EEPROM_COUNTRY_CODE],
       ipw_geos[j].name, 3))
   break;
 }

 if (j == ARRAY_SIZE(ipw_geos)) {
  IPW_WARNING("SKU [%c%c%c] not recognized.\n",
       priv->eeprom[EEPROM_COUNTRY_CODE + 0],
       priv->eeprom[EEPROM_COUNTRY_CODE + 1],
       priv->eeprom[EEPROM_COUNTRY_CODE + 2]);
  j = 0;
 }

 libipw_set_geo(priv->ieee, &ipw_geos[j]);
}
