
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xennet_gnttab_make_txreq {int skb; TYPE_1__* tx; } ;
struct TYPE_2__ {int flags; } ;


 int XEN_NETTXF_more_data ;
 int skb_get (int ) ;
 int xennet_tx_setup_grant (unsigned long,unsigned int,unsigned int,void*) ;

__attribute__((used)) static void xennet_make_one_txreq(unsigned long gfn, unsigned int offset,
      unsigned int len, void *data)
{
 struct xennet_gnttab_make_txreq *info = data;

 info->tx->flags |= XEN_NETTXF_more_data;
 skb_get(info->skb);
 xennet_tx_setup_grant(gfn, offset, len, data);
}
