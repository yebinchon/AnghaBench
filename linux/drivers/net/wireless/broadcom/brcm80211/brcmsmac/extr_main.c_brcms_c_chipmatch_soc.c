
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcma_device {TYPE_1__* bus; } ;
struct bcma_chipinfo {scalar_t__ id; } ;
struct TYPE_2__ {struct bcma_chipinfo chipinfo; } ;


 scalar_t__ BCMA_CHIP_ID_BCM4716 ;
 int pr_err (char*,scalar_t__) ;

__attribute__((used)) static bool brcms_c_chipmatch_soc(struct bcma_device *core)
{
 struct bcma_chipinfo *chipinfo = &core->bus->chipinfo;

 if (chipinfo->id == BCMA_CHIP_ID_BCM4716)
  return 1;

 pr_err("unknown chip id %04x\n", chipinfo->id);
 return 0;
}
