
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp6000_pcie {int bar_lock; } ;


 int __release (int *) ;
 int find_unused_bar_noblock (struct nfp6000_pcie*,int,int,int,int ,size_t,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
find_unused_bar_and_lock(struct nfp6000_pcie *nfp,
    int tgt, int act, int tok,
    u64 offset, size_t size, int width)
{
 unsigned long flags;
 int n;

 spin_lock_irqsave(&nfp->bar_lock, flags);

 n = find_unused_bar_noblock(nfp, tgt, act, tok, offset, size, width);
 if (n < 0)
  spin_unlock_irqrestore(&nfp->bar_lock, flags);
 else
  __release(&nfp->bar_lock);

 return n;
}
