
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_tx_ctxt_desc {int own_bit; } ;



__attribute__((used)) static void sxgbe_tx_ctxt_desc_close(struct sxgbe_tx_ctxt_desc *p)
{
 p->own_bit = 1;
}
