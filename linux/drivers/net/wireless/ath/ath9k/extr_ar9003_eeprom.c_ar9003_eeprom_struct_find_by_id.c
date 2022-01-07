
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9300_eeprom {int templateVersion; } ;


 int ARRAY_SIZE (struct ar9300_eeprom const**) ;
 struct ar9300_eeprom const** ar9300_eep_templates ;

__attribute__((used)) static const struct ar9300_eeprom *ar9003_eeprom_struct_find_by_id(int id)
{
 int it;

 for (it = 0; it < ARRAY_SIZE(ar9300_eep_templates); it++)
  if (ar9300_eep_templates[it]->templateVersion == id)
   return ar9300_eep_templates[it];
 return ((void*)0);
}
