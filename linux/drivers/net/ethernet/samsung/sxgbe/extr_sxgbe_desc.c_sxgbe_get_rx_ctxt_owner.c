
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_rx_ctxt_desc {int own_bit; } ;



__attribute__((used)) static int sxgbe_get_rx_ctxt_owner(struct sxgbe_rx_ctxt_desc *p)
{
 return p->own_bit;
}
