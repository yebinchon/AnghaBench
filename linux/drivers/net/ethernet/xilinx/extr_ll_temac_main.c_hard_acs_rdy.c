
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int dummy; } ;


 int XTE_RDY0_HARD_ACS_RDY_MASK ;
 int XTE_RDY0_OFFSET ;
 int temac_ior (struct temac_local*,int ) ;

__attribute__((used)) static bool hard_acs_rdy(struct temac_local *lp)
{
 return temac_ior(lp, XTE_RDY0_OFFSET) & XTE_RDY0_HARD_ACS_RDY_MASK;
}
