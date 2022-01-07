
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; } ;
struct TYPE_4__ {TYPE_1__ ext; } ;
struct sfp {TYPE_2__ id; } ;


 unsigned int SFP_E_LOS_HIGH ;
 unsigned int SFP_E_LOS_LOW ;
 int SFP_OPTIONS_LOS_INVERTED ;
 int SFP_OPTIONS_LOS_NORMAL ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static bool sfp_los_event_active(struct sfp *sfp, unsigned int event)
{
 return (sfp->id.ext.options & cpu_to_be16(SFP_OPTIONS_LOS_INVERTED) &&
  event == SFP_E_LOS_LOW) ||
        (sfp->id.ext.options & cpu_to_be16(SFP_OPTIONS_LOS_NORMAL) &&
  event == SFP_E_LOS_HIGH);
}
