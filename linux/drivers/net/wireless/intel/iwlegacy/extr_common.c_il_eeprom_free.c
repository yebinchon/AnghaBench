
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int * eeprom; } ;


 int kfree (int *) ;

void
il_eeprom_free(struct il_priv *il)
{
 kfree(il->eeprom);
 il->eeprom = ((void*)0);
}
