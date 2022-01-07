
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; } ;


 unsigned char* PTR_ALIGN (unsigned char*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static inline void sbdma_align_skb(struct sk_buff *skb,
       unsigned int power2, unsigned int offset)
{
 unsigned char *addr = skb->data;
 unsigned char *newaddr = PTR_ALIGN(addr, power2);

 skb_reserve(skb, newaddr - addr + offset);
}
