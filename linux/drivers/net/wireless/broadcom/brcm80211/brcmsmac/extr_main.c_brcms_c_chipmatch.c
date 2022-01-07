
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcma_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int hosttype; } ;




 int brcms_c_chipmatch_pci (struct bcma_device*) ;
 int brcms_c_chipmatch_soc (struct bcma_device*) ;
 int pr_err (char*,int) ;

bool brcms_c_chipmatch(struct bcma_device *core)
{
 switch (core->bus->hosttype) {
 case 129:
  return brcms_c_chipmatch_pci(core);
 case 128:
  return brcms_c_chipmatch_soc(core);
 default:
  pr_err("unknown host type: %i\n", core->bus->hosttype);
  return 0;
 }
}
