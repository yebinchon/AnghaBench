
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {unsigned int (* get_state ) (struct sfp*) ;} ;


 unsigned int stub1 (struct sfp*) ;

__attribute__((used)) static unsigned int sfp_get_state(struct sfp *sfp)
{
 return sfp->get_state(sfp);
}
