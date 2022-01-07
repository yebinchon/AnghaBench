
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int data; } ;
struct nicvf {int dummy; } ;


 int RCV_FRAG_LEN ;
 struct sk_buff* build_skb (void*,int ) ;
 void* phys_to_virt (int ) ;
 int prefetch (int ) ;
 int put_page (int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static struct sk_buff *nicvf_rb_ptr_to_skb(struct nicvf *nic,
        u64 rb_ptr, int len)
{
 void *data;
 struct sk_buff *skb;

 data = phys_to_virt(rb_ptr);


 skb = build_skb(data, RCV_FRAG_LEN);
 if (!skb) {
  put_page(virt_to_page(data));
  return ((void*)0);
 }

 prefetch(skb->data);
 return skb;
}
