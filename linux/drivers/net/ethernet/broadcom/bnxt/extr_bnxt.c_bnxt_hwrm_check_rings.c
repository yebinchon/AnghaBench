
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int hwrm_spec_code; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int bnxt_hwrm_check_pf_rings (struct bnxt*,int,int,int,int,int,int) ;
 int bnxt_hwrm_check_vf_rings (struct bnxt*,int,int,int,int,int,int) ;

__attribute__((used)) static int bnxt_hwrm_check_rings(struct bnxt *bp, int tx_rings, int rx_rings,
     int ring_grps, int cp_rings, int stats,
     int vnics)
{
 if (bp->hwrm_spec_code < 0x10801)
  return 0;

 if (BNXT_PF(bp))
  return bnxt_hwrm_check_pf_rings(bp, tx_rings, rx_rings,
      ring_grps, cp_rings, stats,
      vnics);

 return bnxt_hwrm_check_vf_rings(bp, tx_rings, rx_rings, ring_grps,
     cp_rings, stats, vnics);
}
