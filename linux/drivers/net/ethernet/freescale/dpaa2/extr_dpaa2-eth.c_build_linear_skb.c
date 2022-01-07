
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_eth_channel {int buf_count; } ;


 int DPAA2_ETH_RX_BUF_RAW_SIZE ;
 struct sk_buff* build_skb (void*,int ) ;
 int dpaa2_fd_get_len (struct dpaa2_fd const*) ;
 int dpaa2_fd_get_offset (struct dpaa2_fd const*) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *build_linear_skb(struct dpaa2_eth_channel *ch,
     const struct dpaa2_fd *fd,
     void *fd_vaddr)
{
 struct sk_buff *skb = ((void*)0);
 u16 fd_offset = dpaa2_fd_get_offset(fd);
 u32 fd_length = dpaa2_fd_get_len(fd);

 ch->buf_count--;

 skb = build_skb(fd_vaddr, DPAA2_ETH_RX_BUF_RAW_SIZE);
 if (unlikely(!skb))
  return ((void*)0);

 skb_reserve(skb, fd_offset);
 skb_put(skb, fd_length);

 return skb;
}
