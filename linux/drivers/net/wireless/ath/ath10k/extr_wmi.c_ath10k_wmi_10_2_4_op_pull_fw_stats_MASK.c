#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wmi_10_2_stats_event {int /*<<< orphan*/  num_peer_stats; int /*<<< orphan*/  num_pdev_ext_stats; int /*<<< orphan*/  num_pdev_stats; } ;
struct wmi_10_2_pdev_stats {int /*<<< orphan*/  extra; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  base; } ;
struct wmi_10_2_pdev_ext_stats {int dummy; } ;
struct wmi_10_2_4_peer_stats {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  peer_rx_rate; int /*<<< orphan*/  old; } ;
struct wmi_10_2_4_ext_peer_stats {int /*<<< orphan*/  rx_duration; TYPE_2__ common; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k_fw_stats_peer {int /*<<< orphan*/  list; void* rx_duration; void* peer_rx_rate; } ;
struct ath10k_fw_stats_pdev {int /*<<< orphan*/  list; } ;
struct ath10k_fw_stats {int /*<<< orphan*/  peers; int /*<<< orphan*/  pdevs; } ;
struct TYPE_3__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  WMI_SERVICE_PEER_STATS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ath10k_fw_stats_peer*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ath10k *ar,
					      struct sk_buff *skb,
					      struct ath10k_fw_stats *stats)
{
	const struct wmi_10_2_stats_event *ev = (void *)skb->data;
	u32 num_pdev_stats;
	u32 num_pdev_ext_stats;
	u32 num_peer_stats;
	int i;

	if (!FUNC9(skb, sizeof(*ev)))
		return -EPROTO;

	num_pdev_stats = FUNC0(ev->num_pdev_stats);
	num_pdev_ext_stats = FUNC0(ev->num_pdev_ext_stats);
	num_peer_stats = FUNC0(ev->num_peer_stats);

	for (i = 0; i < num_pdev_stats; i++) {
		const struct wmi_10_2_pdev_stats *src;
		struct ath10k_fw_stats_pdev *dst;

		src = (void *)skb->data;
		if (!FUNC9(skb, sizeof(*src)))
			return -EPROTO;

		dst = FUNC7(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC2(&src->base, dst);
		FUNC5(&src->tx, dst);
		FUNC4(&src->rx, dst);
		FUNC3(&src->extra, dst);
		/* FIXME: expose 10.2 specific values */

		FUNC8(&dst->list, &stats->pdevs);
	}

	for (i = 0; i < num_pdev_ext_stats; i++) {
		const struct wmi_10_2_pdev_ext_stats *src;

		src = (void *)skb->data;
		if (!FUNC9(skb, sizeof(*src)))
			return -EPROTO;

		/* FIXME: expose values to userspace
		 *
		 * Note: Even though this loop seems to do nothing it is
		 * required to parse following sub-structures properly.
		 */
	}

	/* fw doesn't implement vdev stats */

	for (i = 0; i < num_peer_stats; i++) {
		const struct wmi_10_2_4_ext_peer_stats *src;
		struct ath10k_fw_stats_peer *dst;
		int stats_len;

		if (FUNC10(WMI_SERVICE_PEER_STATS, ar->wmi.svc_map))
			stats_len = sizeof(struct wmi_10_2_4_ext_peer_stats);
		else
			stats_len = sizeof(struct wmi_10_2_4_peer_stats);

		src = (void *)skb->data;
		if (!FUNC9(skb, stats_len))
			return -EPROTO;

		dst = FUNC7(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC6(&src->common.old, dst);

		dst->peer_rx_rate = FUNC0(src->common.peer_rx_rate);

		if (FUNC1(ar))
			dst->rx_duration = FUNC0(src->rx_duration);
		/* FIXME: expose 10.2 specific values */

		FUNC8(&dst->list, &stats->peers);
	}

	return 0;
}