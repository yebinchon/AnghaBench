
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int sfp_bus; } ;


 int sfp_link_down (int ) ;

__attribute__((used)) static void sfp_sm_link_down(struct sfp *sfp)
{
 sfp_link_down(sfp->sfp_bus);
}
