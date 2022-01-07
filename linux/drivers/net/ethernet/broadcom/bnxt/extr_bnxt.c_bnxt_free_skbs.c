
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int dummy; } ;


 int bnxt_free_rx_skbs (struct bnxt*) ;
 int bnxt_free_tx_skbs (struct bnxt*) ;

__attribute__((used)) static void bnxt_free_skbs(struct bnxt *bp)
{
 bnxt_free_tx_skbs(bp);
 bnxt_free_rx_skbs(bp);
}
