
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_map {scalar_t__ name; } ;


 int ARRAY_SIZE (struct fw_map*) ;
 struct fw_map* fw_mapping ;
 int strcmp (char const*,scalar_t__) ;

struct fw_map *wil_find_fw_mapping(const char *section)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(fw_mapping); i++)
  if (fw_mapping[i].name &&
      !strcmp(section, fw_mapping[i].name))
   return &fw_mapping[i];

 return ((void*)0);
}
