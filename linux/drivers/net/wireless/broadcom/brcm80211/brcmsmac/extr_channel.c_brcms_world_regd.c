
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_regd {TYPE_1__* regdomain; } ;
struct TYPE_2__ {int alpha2; } ;


 int ARRAY_SIZE (struct brcms_regd*) ;
 struct brcms_regd* cntry_locales ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static const struct brcms_regd *brcms_world_regd(const char *regdom, int len)
{
 const struct brcms_regd *regd = ((void*)0);
 int i;

 for (i = 0; i < ARRAY_SIZE(cntry_locales); i++) {
  if (!strncmp(regdom, cntry_locales[i].regdomain->alpha2, len)) {
   regd = &cntry_locales[i];
   break;
  }
 }

 return regd;
}
