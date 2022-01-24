#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rfc1042_hdr {int /*<<< orphan*/  snap_type; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/ * h_source; int /*<<< orphan*/ * h_dest; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/ * FUNC2 (struct ieee80211_hdr*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr;
	struct rfc1042_hdr *rfc1042;
	struct ethhdr *eth;
	size_t hdrlen;
	u8 da[ETH_ALEN];
	u8 sa[ETH_ALEN];
	__be16 type;

	hdr = (void *)skb->data;
	hdrlen = FUNC3(hdr->frame_control);
	rfc1042 = (void *)skb->data + hdrlen;

	FUNC0(da, FUNC1(hdr));
	FUNC0(sa, FUNC2(hdr));
	type = rfc1042->snap_type;

	FUNC4(skb, hdrlen + sizeof(*rfc1042));
	FUNC5(skb, sizeof(*eth));

	eth = (void *)skb->data;
	FUNC0(eth->h_dest, da);
	FUNC0(eth->h_source, sa);
	eth->h_proto = type;
}