
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tun_flags; } ;
struct ip_tunnel_info {int options_len; TYPE_1__ key; } ;
struct genevehdr {int dummy; } ;
struct dst_entry {int header_len; int dev; } ;


 int ETH_P_TEB ;
 int GENEVE_BASE_HLEN ;
 int LL_RESERVED_SPACE (int ) ;
 int TUNNEL_CSUM ;
 struct genevehdr* __skb_push (struct sk_buff*,int) ;
 int dst_release (struct dst_entry*) ;
 int geneve_build_header (struct genevehdr*,struct ip_tunnel_info const*) ;
 int htons (int ) ;
 int skb_cow_head (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_scrub_packet (struct sk_buff*,int) ;
 int skb_set_inner_protocol (struct sk_buff*,int ) ;
 int udp_tunnel_handle_offloads (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int geneve_build_skb(struct dst_entry *dst, struct sk_buff *skb,
       const struct ip_tunnel_info *info,
       bool xnet, int ip_hdr_len)
{
 bool udp_sum = !!(info->key.tun_flags & TUNNEL_CSUM);
 struct genevehdr *gnvh;
 int min_headroom;
 int err;

 skb_reset_mac_header(skb);
 skb_scrub_packet(skb, xnet);

 min_headroom = LL_RESERVED_SPACE(dst->dev) + dst->header_len +
         GENEVE_BASE_HLEN + info->options_len + ip_hdr_len;
 err = skb_cow_head(skb, min_headroom);
 if (unlikely(err))
  goto free_dst;

 err = udp_tunnel_handle_offloads(skb, udp_sum);
 if (err)
  goto free_dst;

 gnvh = __skb_push(skb, sizeof(*gnvh) + info->options_len);
 geneve_build_header(gnvh, info);
 skb_set_inner_protocol(skb, htons(ETH_P_TEB));
 return 0;

free_dst:
 dst_release(dst);
 return err;
}
