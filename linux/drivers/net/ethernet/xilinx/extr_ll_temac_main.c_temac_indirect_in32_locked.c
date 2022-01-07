
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ WARN_ON (int ) ;
 int XTE_CTL0_OFFSET ;
 int XTE_LSW0_OFFSET ;
 int temac_indirect_busywait (struct temac_local*) ;
 int temac_ior (struct temac_local*,int ) ;
 int temac_iow (struct temac_local*,int ,int) ;

u32 temac_indirect_in32_locked(struct temac_local *lp, int reg)
{




 if (WARN_ON(temac_indirect_busywait(lp)))
  return -ETIMEDOUT;

 temac_iow(lp, XTE_CTL0_OFFSET, reg);





 if (WARN_ON(temac_indirect_busywait(lp)))
  return -ETIMEDOUT;

 return temac_ior(lp, XTE_LSW0_OFFSET);
}
