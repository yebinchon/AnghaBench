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
struct wmi_10_2_stats_event {int /*<<< orphan*/  num_peer_stats; int /*<<< orphan*/  num_pdev_ext_stats; int /*<<< orphan*/  num_pdev_stats; } ;
struct wmi_10_2_peer_stats {int /*<<< orphan*/  peer_rx_rate; int /*<<< orphan*/  old; } ;
struct wmi_10_2_pdev_stats {int /*<<< orphan*/  extra; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  base; } ;
struct wmi_10_2_pdev_ext_stats {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k_fw_stats_peer {int /*<<< orphan*/  list; void* peer_rx_rate; } ;
struct ath10k_fw_stats_pdev {int /*<<< orphan*/  list; } ;
struct ath10k_fw_stats {int /*<<< orphan*/  peers; int /*<<< orphan*/  pdevs; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ath10k_fw_stats_peer*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct ath10k *ar,
					    struct sk_buff *skb,
					    struct ath10k_fw_stats *stats)
{
	const struct wmi_10_2_stats_event *ev = (void *)skb->data;
	u32 num_pdev_stats;
	u32 num_pdev_ext_stats;
	u32 num_peer_stats;
	int i;

	if (!FUNC8(skb, sizeof(*ev)))
		return -EPROTO;

	num_pdev_stats = FUNC0(ev->num_pdev_stats);
	num_pdev_ext_stats = FUNC0(ev->num_pdev_ext_stats);
	num_peer_stats = FUNC0(ev->num_peer_stats);

	for (i = 0; i < num_pdev_stats; i++) {
		const struct wmi_10_2_pdev_stats *src;
		struct ath10k_fw_stats_pdev *dst;

		src = (void *)skb->data;
		if (!FUNC8(skb, sizeof(*src)))
			return -EPROTO;

		dst = FUNC6(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC1(&src->base, dst);
		FUNC4(&src->tx, dst);
		FUNC3(&src->rx, dst);
		FUNC2(&src->extra, dst);
		/* FIXME: expose 10.2 specific values */

		FUNC7(&dst->list, &stats->pdevs);
	}

	for (i = 0; i < num_pdev_ext_stats; i++) {
		const struct wmi_10_2_pdev_ext_stats *src;

		src = (void *)skb->data;
		if (!FUNC8(skb, sizeof(*src)))
			return -EPROTO;

		/* FIXME: expose values to userspace
		 *
		 * Note: Even though this loop seems to do nothing it is
		 * required to parse following sub-structures properly.
		 */
	}

	/* fw doesn't implement vdev stats */

	for (i = 0; i < num_peer_stats; i++) {
		const struct wmi_10_2_peer_stats *src;
		struct ath10k_fw_stats_peer *dst;

		src = (void *)skb->data;
		if (!FUNC8(skb, sizeof(*src)))
			return -EPROTO;

		dst = FUNC6(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC5(&src->old, dst);

		dst->peer_rx_rate = FUNC0(src->peer_rx_rate);
		/* FIXME: expose 10.2 specific values */

		FUNC7(&dst->list, &stats->peers);
	}

	return 0;
}