
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; } ;
struct TYPE_4__ {TYPE_1__ ext; } ;
struct sfp {unsigned int state; TYPE_2__ id; } ;


 unsigned int SFP_F_LOS ;
 int SFP_OPTIONS_LOS_INVERTED ;
 int SFP_OPTIONS_LOS_NORMAL ;
 int SFP_S_WAIT_LOS ;
 int cpu_to_be16 (int ) ;
 int sfp_sm_link_up (struct sfp*) ;
 int sfp_sm_next (struct sfp*,int ,int ) ;

__attribute__((used)) static void sfp_sm_link_check_los(struct sfp *sfp)
{
 unsigned int los = sfp->state & SFP_F_LOS;




 if (sfp->id.ext.options & cpu_to_be16(SFP_OPTIONS_LOS_INVERTED))
  los ^= SFP_F_LOS;
 else if (!(sfp->id.ext.options & cpu_to_be16(SFP_OPTIONS_LOS_NORMAL)))
  los = 0;

 if (los)
  sfp_sm_next(sfp, SFP_S_WAIT_LOS, 0);
 else
  sfp_sm_link_up(sfp);
}
