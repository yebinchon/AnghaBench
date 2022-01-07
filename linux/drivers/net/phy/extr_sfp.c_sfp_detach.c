
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int attached; } ;


 int SFP_E_REMOVE ;
 int sfp_sm_event (struct sfp*,int ) ;

__attribute__((used)) static void sfp_detach(struct sfp *sfp)
{
 sfp->attached = 0;
 sfp_sm_event(sfp, SFP_E_REMOVE);
}
