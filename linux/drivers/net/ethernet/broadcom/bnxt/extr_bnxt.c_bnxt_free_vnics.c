
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {scalar_t__ nr_vnics; int * vnic_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void bnxt_free_vnics(struct bnxt *bp)
{
 kfree(bp->vnic_info);
 bp->vnic_info = ((void*)0);
 bp->nr_vnics = 0;
}
