#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tun_flags; } ;
struct ip_tunnel_info {int options_len; TYPE_1__ key; } ;
struct genevehdr {int dummy; } ;
struct dst_entry {int /*<<< orphan*/  header_len; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
 int /*<<< orphan*/  GENEVE_BASE_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TUNNEL_CSUM ; 
 struct genevehdr* FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct genevehdr*,struct ip_tunnel_info const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct dst_entry *dst, struct sk_buff *skb,
			    const struct ip_tunnel_info *info,
			    bool xnet, int ip_hdr_len)
{
	bool udp_sum = !!(info->key.tun_flags & TUNNEL_CSUM);
	struct genevehdr *gnvh;
	int min_headroom;
	int err;

	FUNC6(skb);
	FUNC7(skb, xnet);

	min_headroom = FUNC0(dst->dev) + dst->header_len +
		       GENEVE_BASE_HLEN + info->options_len + ip_hdr_len;
	err = FUNC5(skb, min_headroom);
	if (FUNC10(err))
		goto free_dst;

	err = FUNC9(skb, udp_sum);
	if (err)
		goto free_dst;

	gnvh = FUNC1(skb, sizeof(*gnvh) + info->options_len);
	FUNC3(gnvh, info);
	FUNC8(skb, FUNC4(ETH_P_TEB));
	return 0;

free_dst:
	FUNC2(dst);
	return err;
}