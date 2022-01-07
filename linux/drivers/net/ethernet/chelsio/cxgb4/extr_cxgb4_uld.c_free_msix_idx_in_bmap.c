
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uld_msix_bmap {int lock; int msix_bmap; } ;
struct adapter {struct uld_msix_bmap msix_bmap_ulds; } ;


 int __clear_bit (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_msix_idx_in_bmap(struct adapter *adap, unsigned int msix_idx)
{
 struct uld_msix_bmap *bmap = &adap->msix_bmap_ulds;
 unsigned long flags;

 spin_lock_irqsave(&bmap->lock, flags);
 __clear_bit(msix_idx, bmap->msix_bmap);
 spin_unlock_irqrestore(&bmap->lock, flags);
}
