
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_dmn_pair_mapping {int reg_domain; } ;


 int ARRAY_SIZE (struct reg_dmn_pair_mapping*) ;
 int NO_ENUMRD ;
 struct reg_dmn_pair_mapping* regDomainPairs ;

__attribute__((used)) static struct reg_dmn_pair_mapping*
ath_get_regpair(int regdmn)
{
 int i;

 if (regdmn == NO_ENUMRD)
  return ((void*)0);
 for (i = 0; i < ARRAY_SIZE(regDomainPairs); i++) {
  if (regDomainPairs[i].reg_domain == regdmn)
   return &regDomainPairs[i];
 }
 return ((void*)0);
}
