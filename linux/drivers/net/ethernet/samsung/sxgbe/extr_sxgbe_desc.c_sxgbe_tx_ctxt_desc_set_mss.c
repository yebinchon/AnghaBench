
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sxgbe_tx_ctxt_desc {int maxseg_size; } ;



__attribute__((used)) static void sxgbe_tx_ctxt_desc_set_mss(struct sxgbe_tx_ctxt_desc *p, u16 mss)
{
 p->maxseg_size = mss;
}
