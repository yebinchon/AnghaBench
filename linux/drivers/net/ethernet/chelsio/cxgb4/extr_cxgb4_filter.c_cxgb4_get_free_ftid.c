
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {int nftids; int ftid_lock; int ftid_bmap; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; struct tid_info tids; } ;


 int PF_INET ;
 int bitmap_find_free_region (int ,int,int) ;
 int bitmap_release_region (int ,int,int) ;
 int find_first_zero_bit (int ,int) ;
 scalar_t__ is_t6 (int ) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int cxgb4_get_free_ftid(struct net_device *dev, int family)
{
 struct adapter *adap = netdev2adap(dev);
 struct tid_info *t = &adap->tids;
 int ftid;

 spin_lock_bh(&t->ftid_lock);
 if (family == PF_INET) {
  ftid = find_first_zero_bit(t->ftid_bmap, t->nftids);
  if (ftid >= t->nftids)
   ftid = -1;
 } else {
  if (is_t6(adap->params.chip)) {
   ftid = bitmap_find_free_region(t->ftid_bmap,
             t->nftids, 1);
   if (ftid < 0)
    goto out_unlock;




   bitmap_release_region(t->ftid_bmap, ftid, 1);
  } else {
   ftid = bitmap_find_free_region(t->ftid_bmap,
             t->nftids, 2);
   if (ftid < 0)
    goto out_unlock;

   bitmap_release_region(t->ftid_bmap, ftid, 2);
  }
 }
out_unlock:
 spin_unlock_bh(&t->ftid_lock);
 return ftid;
}
