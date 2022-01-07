
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {int dummy; } ;


 int bnx2_free_rx_skbs (struct bnx2*) ;
 int bnx2_free_tx_skbs (struct bnx2*) ;

__attribute__((used)) static void
bnx2_free_skbs(struct bnx2 *bp)
{
 bnx2_free_tx_skbs(bp);
 bnx2_free_rx_skbs(bp);
}
