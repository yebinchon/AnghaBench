
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int sfp_bus; } ;


 int SFP_S_LINK_UP ;
 int sfp_link_up (int ) ;
 int sfp_sm_next (struct sfp*,int ,int ) ;

__attribute__((used)) static void sfp_sm_link_up(struct sfp *sfp)
{
 sfp_link_up(sfp->sfp_bus);
 sfp_sm_next(sfp, SFP_S_LINK_UP, 0);
}
