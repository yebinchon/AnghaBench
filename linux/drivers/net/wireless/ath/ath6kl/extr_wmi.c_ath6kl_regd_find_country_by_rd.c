
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct country_code_to_enum_rd {scalar_t__ regDmnEnum; } ;


 int ARRAY_SIZE (struct country_code_to_enum_rd*) ;
 struct country_code_to_enum_rd* allCountries ;

__attribute__((used)) static struct country_code_to_enum_rd *
ath6kl_regd_find_country_by_rd(u16 regdmn)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(allCountries); i++) {
  if (allCountries[i].regDmnEnum == regdmn)
   return &allCountries[i];
 }

 return ((void*)0);
}
