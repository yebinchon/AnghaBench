
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sg_ent {void** len; void** addr; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {unsigned int nr_frags; int * frags; } ;


 void* cpu_to_be32 (unsigned int) ;
 void* cpu_to_be64 (int const) ;
 unsigned int skb_frag_size (int const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int write_sgl(const struct sk_buff *skb,
         struct sg_ent *sgp, unsigned char *start,
         unsigned int len, const dma_addr_t *addr)
{
 unsigned int i, j = 0, k = 0, nfrags;

 if (len) {
  sgp->len[0] = cpu_to_be32(len);
  sgp->addr[j++] = cpu_to_be64(addr[k++]);
 }

 nfrags = skb_shinfo(skb)->nr_frags;
 for (i = 0; i < nfrags; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  sgp->len[j] = cpu_to_be32(skb_frag_size(frag));
  sgp->addr[j] = cpu_to_be64(addr[k++]);
  j ^= 1;
  if (j == 0)
   ++sgp;
 }
 if (j)
  sgp->len[j] = 0;
 return ((nfrags + (len != 0)) * 3) / 2 + j;
}
