
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softing_platform_data {int manf; unsigned int prod; } ;


 struct softing_platform_data* softingcs_platform_data ;

__attribute__((used)) static const struct softing_platform_data
*softingcs_find_platform_data(unsigned int manf, unsigned int prod)
{
 const struct softing_platform_data *lp;

 for (lp = softingcs_platform_data; lp->manf; ++lp) {
  if ((lp->manf == manf) && (lp->prod == prod))
   return lp;
 }
 return ((void*)0);
}
