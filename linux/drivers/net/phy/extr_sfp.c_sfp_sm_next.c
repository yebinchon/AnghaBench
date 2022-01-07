
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {unsigned int sm_state; } ;


 int sfp_sm_set_timer (struct sfp*,unsigned int) ;

__attribute__((used)) static void sfp_sm_next(struct sfp *sfp, unsigned int state,
   unsigned int timeout)
{
 sfp->sm_state = state;
 sfp_sm_set_timer(sfp, timeout);
}
