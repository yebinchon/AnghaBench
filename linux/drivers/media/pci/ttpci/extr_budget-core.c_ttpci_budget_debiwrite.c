
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct budget {int debilock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ttpci_budget_debiwrite_nolock (struct budget*,int ,int,int,int ,int) ;

int ttpci_budget_debiwrite(struct budget *budget, u32 config, int addr,
      int count, u32 value, int uselocks, int nobusyloop)
{
 if (count > 4 || count <= 0)
  return 0;

 if (uselocks) {
  unsigned long flags;
  int result;

  spin_lock_irqsave(&budget->debilock, flags);
  result = ttpci_budget_debiwrite_nolock(budget, config, addr,
      count, value, nobusyloop);
  spin_unlock_irqrestore(&budget->debilock, flags);
  return result;
 }
 return ttpci_budget_debiwrite_nolock(budget, config, addr,
          count, value, nobusyloop);
}
