
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int attached; int state; } ;


 int SFP_E_INSERT ;
 int SFP_F_PRESENT ;
 int sfp_sm_event (struct sfp*,int ) ;

__attribute__((used)) static void sfp_attach(struct sfp *sfp)
{
 sfp->attached = 1;
 if (sfp->state & SFP_F_PRESENT)
  sfp_sm_event(sfp, SFP_E_INSERT);
}
