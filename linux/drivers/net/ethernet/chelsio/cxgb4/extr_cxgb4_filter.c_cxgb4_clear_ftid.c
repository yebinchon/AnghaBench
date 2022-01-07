
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int ftid_lock; int ftid_bmap; } ;


 unsigned int CHELSIO_T6 ;
 int PF_INET ;
 int __clear_bit (int,int ) ;
 int bitmap_release_region (int ,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void cxgb4_clear_ftid(struct tid_info *t, int fidx, int family,
        unsigned int chip_ver)
{
 spin_lock_bh(&t->ftid_lock);
 if (family == PF_INET) {
  __clear_bit(fidx, t->ftid_bmap);
 } else {
  if (chip_ver < CHELSIO_T6)
   bitmap_release_region(t->ftid_bmap, fidx, 2);
  else
   bitmap_release_region(t->ftid_bmap, fidx, 1);
 }
 spin_unlock_bh(&t->ftid_lock);
}
