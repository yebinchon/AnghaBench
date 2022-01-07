
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct si476x_core {int revision; } ;


 int BUG_ON (int) ;




__attribute__((used)) static bool si476x_core_is_readonly_property(struct si476x_core *core,
          u16 property)
{
 BUG_ON(core->revision > 128 ||
        core->revision == -1);

 switch (core->revision) {
 case 130:
  return (property == 0x3200);
 case 129:
  return (property == 0x1006 ||
   property == 0x2210 ||
   property == 0x3200);
 case 128:
  return 0;
 }

 return 0;
}
