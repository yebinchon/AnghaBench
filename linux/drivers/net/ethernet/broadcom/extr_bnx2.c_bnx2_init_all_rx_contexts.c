
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2 {int num_rx_rings; } ;


 scalar_t__ RX_CID ;
 scalar_t__ RX_RSS_CID ;
 int bnx2_init_rx_context (struct bnx2*,scalar_t__) ;

__attribute__((used)) static void
bnx2_init_all_rx_contexts(struct bnx2 *bp)
{
 int i;
 u32 cid;

 for (i = 0, cid = RX_CID; i < bp->num_rx_rings; i++, cid++) {
  if (i == 1)
   cid = RX_RSS_CID;
  bnx2_init_rx_context(bp, cid);
 }
}
