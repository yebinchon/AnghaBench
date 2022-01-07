
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {scalar_t__ spq_prod_bd; scalar_t__ spq_last_bd; scalar_t__ spq; int dsb_sp_prod; scalar_t__ spq_prod_idx; int cq_spq_left; int spq_lock; } ;


 int BNX2X_SP_DSB_INDEX ;
 int MAX_SPQ_PENDING ;
 scalar_t__ MAX_SP_DESC_CNT ;
 int atomic_set (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void bnx2x_init_sp_ring(struct bnx2x *bp)
{
 spin_lock_init(&bp->spq_lock);
 atomic_set(&bp->cq_spq_left, MAX_SPQ_PENDING);

 bp->spq_prod_idx = 0;
 bp->dsb_sp_prod = BNX2X_SP_DSB_INDEX;
 bp->spq_prod_bd = bp->spq;
 bp->spq_last_bd = bp->spq_prod_bd + MAX_SP_DESC_CNT;
}
