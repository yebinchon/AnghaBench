
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_option {int opt; int m_or; int reg; } ;
struct temac_local {int options; int indirect_lock; } ;
struct net_device {int dummy; } ;


 struct temac_local* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int temac_indirect_in32_locked (struct temac_local*,int ) ;
 int temac_indirect_out32_locked (struct temac_local*,int ,int) ;
 struct temac_option* temac_options ;

__attribute__((used)) static u32 temac_setoptions(struct net_device *ndev, u32 options)
{
 struct temac_local *lp = netdev_priv(ndev);
 struct temac_option *tp = &temac_options[0];
 int reg;
 unsigned long flags;

 spin_lock_irqsave(lp->indirect_lock, flags);
 while (tp->opt) {
  reg = temac_indirect_in32_locked(lp, tp->reg) & ~tp->m_or;
  if (options & tp->opt) {
   reg |= tp->m_or;
   temac_indirect_out32_locked(lp, tp->reg, reg);
  }
  tp++;
 }
 spin_unlock_irqrestore(lp->indirect_lock, flags);
 lp->options |= options;

 return 0;
}
