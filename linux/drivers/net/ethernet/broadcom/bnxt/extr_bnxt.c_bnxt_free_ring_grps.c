
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int * grp_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void bnxt_free_ring_grps(struct bnxt *bp)
{
 kfree(bp->grp_info);
 bp->grp_info = ((void*)0);
}
