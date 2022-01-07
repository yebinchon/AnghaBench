
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int bnx2x_free_rx_skbs_cnic (struct bnx2x*) ;
 int bnx2x_free_tx_skbs_cnic (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_free_skbs_cnic(struct bnx2x *bp)
{
 bnx2x_free_tx_skbs_cnic(bp);
 bnx2x_free_rx_skbs_cnic(bp);
}
