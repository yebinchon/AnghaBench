
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_tx_ctxt_desc {int ctxt_desc_err; } ;



__attribute__((used)) static int sxgbe_tx_ctxt_desc_get_cde(struct sxgbe_tx_ctxt_desc *p)
{
 return p->ctxt_desc_err;
}
