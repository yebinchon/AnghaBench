
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uld_msix_bmap {unsigned int mapsize; int lock; int msix_bmap; } ;
struct adapter {struct uld_msix_bmap msix_bmap_ulds; } ;


 int ENOSPC ;
 int __set_bit (unsigned int,int ) ;
 unsigned int find_first_zero_bit (int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_msix_idx_from_bmap(struct adapter *adap)
{
 struct uld_msix_bmap *bmap = &adap->msix_bmap_ulds;
 unsigned long flags;
 unsigned int msix_idx;

 spin_lock_irqsave(&bmap->lock, flags);
 msix_idx = find_first_zero_bit(bmap->msix_bmap, bmap->mapsize);
 if (msix_idx < bmap->mapsize) {
  __set_bit(msix_idx, bmap->msix_bmap);
 } else {
  spin_unlock_irqrestore(&bmap->lock, flags);
  return -ENOSPC;
 }

 spin_unlock_irqrestore(&bmap->lock, flags);
 return msix_idx;
}
