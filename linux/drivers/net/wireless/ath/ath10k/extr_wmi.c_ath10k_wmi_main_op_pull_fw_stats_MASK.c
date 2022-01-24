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
typedef  int u32 ;
struct wmi_stats_event {int /*<<< orphan*/  num_peer_stats; int /*<<< orphan*/  num_pdev_stats; } ;
struct wmi_peer_stats {int dummy; } ;
struct wmi_pdev_stats {int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  base; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k_fw_stats_peer {int /*<<< orphan*/  list; } ;
struct ath10k_fw_stats_pdev {int /*<<< orphan*/  list; } ;
struct ath10k_fw_stats {int /*<<< orphan*/  peers; int /*<<< orphan*/  pdevs; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct wmi_peer_stats const*,struct ath10k_fw_stats_peer*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct ath10k *ar,
					    struct sk_buff *skb,
					    struct ath10k_fw_stats *stats)
{
	const struct wmi_stats_event *ev = (void *)skb->data;
	u32 num_pdev_stats, num_peer_stats;
	int i;

	if (!FUNC7(skb, sizeof(*ev)))
		return -EPROTO;

	num_pdev_stats = FUNC0(ev->num_pdev_stats);
	num_peer_stats = FUNC0(ev->num_peer_stats);

	for (i = 0; i < num_pdev_stats; i++) {
		const struct wmi_pdev_stats *src;
		struct ath10k_fw_stats_pdev *dst;

		src = (void *)skb->data;
		if (!FUNC7(skb, sizeof(*src)))
			return -EPROTO;

		dst = FUNC5(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC1(&src->base, dst);
		FUNC3(&src->tx, dst);
		FUNC2(&src->rx, dst);

		FUNC6(&dst->list, &stats->pdevs);
	}

	/* fw doesn't implement vdev stats */

	for (i = 0; i < num_peer_stats; i++) {
		const struct wmi_peer_stats *src;
		struct ath10k_fw_stats_peer *dst;

		src = (void *)skb->data;
		if (!FUNC7(skb, sizeof(*src)))
			return -EPROTO;

		dst = FUNC5(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC4(src, dst);
		FUNC6(&dst->list, &stats->peers);
	}

	return 0;
}