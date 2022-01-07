
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pri_sequence {int head; } ;


 int DFS_POOL_STAT_DEC (int ) ;
 int list_add (int *,int *) ;
 int pool_lock ;
 int pseq_pool ;
 int pseq_used ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void pool_put_pseq_elem(struct pri_sequence *pse)
{
 spin_lock_bh(&pool_lock);
 list_add(&pse->head, &pseq_pool);
 DFS_POOL_STAT_DEC(pseq_used);
 spin_unlock_bh(&pool_lock);
}
