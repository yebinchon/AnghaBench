
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int * test_info; } ;


 int kfree (int *) ;

void bnxt_ethtool_free(struct bnxt *bp)
{
 kfree(bp->test_info);
 bp->test_info = ((void*)0);
}
