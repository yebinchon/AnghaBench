
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint ;
struct sk_buff {scalar_t__ data; } ;


 int __skb_trim (struct sk_buff*,int) ;
 long roundup (long,int) ;
 int skb_pull (struct sk_buff*,long) ;

__attribute__((used)) static void pkt_align(struct sk_buff *p, int len, int align)
{
 uint datalign;
 datalign = (unsigned long)(p->data);
 datalign = roundup(datalign, (align)) - datalign;
 if (datalign)
  skb_pull(p, datalign);
 __skb_trim(p, len);
}
