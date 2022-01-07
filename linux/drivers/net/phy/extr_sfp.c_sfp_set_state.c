
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int (* set_state ) (struct sfp*,unsigned int) ;} ;


 int stub1 (struct sfp*,unsigned int) ;

__attribute__((used)) static void sfp_set_state(struct sfp *sfp, unsigned int state)
{
 sfp->set_state(sfp, state);
}
