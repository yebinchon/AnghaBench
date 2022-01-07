
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 int bnxt_init_chip (struct bnxt*,int) ;
 int bnxt_init_cp_rings (struct bnxt*) ;
 int bnxt_init_ring_grps (struct bnxt*,int) ;
 int bnxt_init_rx_rings (struct bnxt*) ;
 int bnxt_init_tx_rings (struct bnxt*) ;
 int bnxt_init_vnics (struct bnxt*) ;

__attribute__((used)) static int bnxt_init_nic(struct bnxt *bp, bool irq_re_init)
{
 bnxt_init_cp_rings(bp);
 bnxt_init_rx_rings(bp);
 bnxt_init_tx_rings(bp);
 bnxt_init_ring_grps(bp, irq_re_init);
 bnxt_init_vnics(bp);

 return bnxt_init_chip(bp, irq_re_init);
}
