
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ehea_vsgentry {void* vaddr; void* len; void* l_key; } ;
struct TYPE_4__ {int sg_list; struct ehea_vsgentry sg_entry; } ;
struct TYPE_5__ {TYPE_1__ immdata_desc; } ;
struct ehea_swqe {scalar_t__ descriptors; TYPE_2__ u; } ;
typedef int skb_frag_t ;
struct TYPE_6__ {int nr_frags; int * frags; } ;


 void* ehea_map_vaddr (int ) ;
 int skb_frag_address (int *) ;
 void* skb_frag_size (int *) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int write_swqe2_immediate (struct sk_buff*,struct ehea_swqe*,void*) ;

__attribute__((used)) static inline void write_swqe2_data(struct sk_buff *skb, struct net_device *dev,
        struct ehea_swqe *swqe, u32 lkey)
{
 struct ehea_vsgentry *sg_list, *sg1entry, *sgentry;
 skb_frag_t *frag;
 int nfrags, sg1entry_contains_frag_data, i;

 nfrags = skb_shinfo(skb)->nr_frags;
 sg1entry = &swqe->u.immdata_desc.sg_entry;
 sg_list = (struct ehea_vsgentry *)&swqe->u.immdata_desc.sg_list;
 sg1entry_contains_frag_data = 0;

 write_swqe2_immediate(skb, swqe, lkey);


 if (nfrags > 0) {
  if (swqe->descriptors == 0) {

   frag = &skb_shinfo(skb)->frags[0];


   sg1entry->l_key = lkey;
   sg1entry->len = skb_frag_size(frag);
   sg1entry->vaddr =
    ehea_map_vaddr(skb_frag_address(frag));
   swqe->descriptors++;
   sg1entry_contains_frag_data = 1;
  }

  for (i = sg1entry_contains_frag_data; i < nfrags; i++) {

   frag = &skb_shinfo(skb)->frags[i];
   sgentry = &sg_list[i - sg1entry_contains_frag_data];

   sgentry->l_key = lkey;
   sgentry->len = skb_frag_size(frag);
   sgentry->vaddr = ehea_map_vaddr(skb_frag_address(frag));
   swqe->descriptors++;
  }
 }
}
