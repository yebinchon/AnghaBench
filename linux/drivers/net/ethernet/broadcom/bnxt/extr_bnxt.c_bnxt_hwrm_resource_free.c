
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 int bnxt_clear_vnic (struct bnxt*) ;
 int bnxt_hwrm_free_tunnel_ports (struct bnxt*) ;
 int bnxt_hwrm_ring_free (struct bnxt*,int) ;
 int bnxt_hwrm_ring_grp_free (struct bnxt*) ;
 int bnxt_hwrm_stat_ctx_free (struct bnxt*) ;

__attribute__((used)) static void bnxt_hwrm_resource_free(struct bnxt *bp, bool close_path,
        bool irq_re_init)
{
 bnxt_clear_vnic(bp);
 bnxt_hwrm_ring_free(bp, close_path);
 bnxt_hwrm_ring_grp_free(bp);
 if (irq_re_init) {
  bnxt_hwrm_stat_ctx_free(bp);
  bnxt_hwrm_free_tunnel_ports(bp);
 }
}
