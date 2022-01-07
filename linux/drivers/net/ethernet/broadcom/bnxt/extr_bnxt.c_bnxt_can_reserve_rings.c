
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_hw_resc {scalar_t__ resv_tx_rings; scalar_t__ min_tx_rings; } ;
struct bnxt {int dev; struct bnxt_hw_resc hw_resc; } ;


 scalar_t__ BNXT_NEW_RM (struct bnxt*) ;
 scalar_t__ BNXT_VF (struct bnxt*) ;
 int netif_running (int ) ;

__attribute__((used)) static bool bnxt_can_reserve_rings(struct bnxt *bp)
{
 return 1;
}
