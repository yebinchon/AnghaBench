
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int dummy; } ;


 int N_RX_COMP_RINGS ;
 int cas_enable_irq (struct cas*,int) ;

__attribute__((used)) static inline void cas_unmask_intr(struct cas *cp)
{
 int i;

 for (i = 0; i < N_RX_COMP_RINGS; i++)
  cas_enable_irq(cp, i);
}
