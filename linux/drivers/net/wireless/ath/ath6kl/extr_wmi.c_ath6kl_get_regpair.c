
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct reg_dmn_pair_mapping {scalar_t__ reg_domain; } ;


 int ARRAY_SIZE (struct reg_dmn_pair_mapping*) ;
 scalar_t__ NO_ENUMRD ;
 struct reg_dmn_pair_mapping* regDomainPairs ;

__attribute__((used)) static struct reg_dmn_pair_mapping *
ath6kl_get_regpair(u16 regdmn)
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
