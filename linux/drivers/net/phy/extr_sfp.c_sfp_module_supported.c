
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phys_id; scalar_t__ phys_ext_id; } ;
struct sfp_eeprom_id {TYPE_1__ base; } ;


 scalar_t__ SFP_PHYS_EXT_ID_SFP ;
 scalar_t__ SFP_PHYS_ID_SFP ;

__attribute__((used)) static bool sfp_module_supported(const struct sfp_eeprom_id *id)
{
 return id->base.phys_id == SFP_PHYS_ID_SFP &&
        id->base.phys_ext_id == SFP_PHYS_EXT_ID_SFP;
}
