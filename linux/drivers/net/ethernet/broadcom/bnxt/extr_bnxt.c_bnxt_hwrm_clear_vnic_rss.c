
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int nr_vnics; } ;


 int bnxt_hwrm_vnic_set_rss (struct bnxt*,int,int) ;

__attribute__((used)) static void bnxt_hwrm_clear_vnic_rss(struct bnxt *bp)
{
 int i;

 for (i = 0; i < bp->nr_vnics; i++)
  bnxt_hwrm_vnic_set_rss(bp, i, 0);
}
