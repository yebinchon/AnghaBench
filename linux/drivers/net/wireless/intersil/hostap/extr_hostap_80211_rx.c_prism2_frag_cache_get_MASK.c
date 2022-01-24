#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct prism2_frag_entry {unsigned int seq; unsigned int last_frag; struct sk_buff* skb; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  first_frag_time; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  addr2; int /*<<< orphan*/  seq_ctrl; } ;
struct TYPE_6__ {size_t frag_next_idx; struct prism2_frag_entry* frag_cache; TYPE_1__* dev; } ;
typedef  TYPE_2__ local_info_t ;
struct TYPE_5__ {scalar_t__ mtu; } ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 size_t PRISM2_FRAG_CACHE_LEN ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct prism2_frag_entry* FUNC4 (TYPE_2__*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(local_info_t *local, struct ieee80211_hdr *hdr)
{
	struct sk_buff *skb = NULL;
	u16 sc;
	unsigned int frag, seq;
	struct prism2_frag_entry *entry;

	sc = FUNC2(hdr->seq_ctrl);
	frag = sc & IEEE80211_SCTL_FRAG;
	seq = (sc & IEEE80211_SCTL_SEQ) >> 4;

	if (frag == 0) {
		/* Reserve enough space to fit maximum frame length */
		skb = FUNC0(local->dev->mtu +
				    sizeof(struct ieee80211_hdr) +
				    8 /* LLC */ +
				    2 /* alignment */ +
				    8 /* WEP */ + ETH_ALEN /* WDS */);
		if (skb == NULL)
			return NULL;

		entry = &local->frag_cache[local->frag_next_idx];
		local->frag_next_idx++;
		if (local->frag_next_idx >= PRISM2_FRAG_CACHE_LEN)
			local->frag_next_idx = 0;

		if (entry->skb != NULL)
			FUNC1(entry->skb);

		entry->first_frag_time = jiffies;
		entry->seq = seq;
		entry->last_frag = frag;
		entry->skb = skb;
		FUNC3(entry->src_addr, hdr->addr2, ETH_ALEN);
		FUNC3(entry->dst_addr, hdr->addr1, ETH_ALEN);
	} else {
		/* received a fragment of a frame for which the head fragment
		 * should have already been received */
		entry = FUNC4(local, seq, frag, hdr->addr2,
					       hdr->addr1);
		if (entry != NULL) {
			entry->last_frag = frag;
			skb = entry->skb;
		}
	}

	return skb;
}