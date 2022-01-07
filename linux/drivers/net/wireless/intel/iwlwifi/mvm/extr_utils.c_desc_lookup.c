
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FW_SYSASSERT_CPU_MASK ;
 TYPE_1__* advanced_lookup ;

__attribute__((used)) static const char *desc_lookup(u32 num)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(advanced_lookup) - 1; i++)
  if (advanced_lookup[i].num == (num & ~FW_SYSASSERT_CPU_MASK))
   return advanced_lookup[i].name;


 return advanced_lookup[i].name;
}
