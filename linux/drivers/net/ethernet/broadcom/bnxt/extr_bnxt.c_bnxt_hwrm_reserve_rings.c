
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int bnxt_hwrm_reserve_pf_rings (struct bnxt*,int,int,int,int,int,int) ;
 int bnxt_hwrm_reserve_vf_rings (struct bnxt*,int,int,int,int,int,int) ;

__attribute__((used)) static int bnxt_hwrm_reserve_rings(struct bnxt *bp, int tx, int rx, int grp,
       int cp, int stat, int vnic)
{
 if (BNXT_PF(bp))
  return bnxt_hwrm_reserve_pf_rings(bp, tx, rx, grp, cp, stat,
        vnic);
 else
  return bnxt_hwrm_reserve_vf_rings(bp, tx, rx, grp, cp, stat,
        vnic);
}
