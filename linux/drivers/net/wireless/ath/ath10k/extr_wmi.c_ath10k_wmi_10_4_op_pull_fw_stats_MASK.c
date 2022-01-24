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
typedef  int u32 ;
struct wmi_vdev_stats_extd {int dummy; } ;
struct wmi_vdev_stats {int dummy; } ;
struct wmi_10_4_peer_stats {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct wmi_10_4_peer_extd_stats {int /*<<< orphan*/  rx_duration; TYPE_1__ peer_macaddr; } ;
struct wmi_10_4_pdev_stats {int /*<<< orphan*/  extra; int /*<<< orphan*/  rx_ovfl_errs; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  base; } ;
struct wmi_10_4_bss_bcn_filter_stats {int dummy; } ;
struct wmi_10_2_stats_event {int /*<<< orphan*/  stats_id; int /*<<< orphan*/  num_bcnflt_stats; int /*<<< orphan*/  num_peer_stats; int /*<<< orphan*/  num_vdev_stats; int /*<<< orphan*/  num_pdev_ext_stats; int /*<<< orphan*/  num_pdev_stats; } ;
struct wmi_10_2_pdev_ext_stats {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k_fw_stats_vdev_extd {int /*<<< orphan*/  list; } ;
struct ath10k_fw_stats_peer {int /*<<< orphan*/  list; } ;
struct ath10k_fw_stats_pdev {int /*<<< orphan*/  list; void* rx_ovfl_errs; } ;
struct ath10k_fw_stats {int extended; int /*<<< orphan*/  vdevs; int /*<<< orphan*/  peers_extd; int /*<<< orphan*/  peers; int /*<<< orphan*/  pdevs; } ;
struct ath10k_fw_extd_stats_peer {int /*<<< orphan*/  list; void* rx_duration; int /*<<< orphan*/  peer_macaddr; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int WMI_10_4_STAT_PEER_EXTD ; 
 int WMI_10_4_STAT_VDEV_EXTD ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wmi_10_4_peer_stats const*,struct ath10k_fw_stats_peer*) ; 
 int /*<<< orphan*/  FUNC3 (struct wmi_vdev_stats_extd const*,struct ath10k_fw_stats_vdev_extd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC11(struct ath10k *ar,
					    struct sk_buff *skb,
					    struct ath10k_fw_stats *stats)
{
	const struct wmi_10_2_stats_event *ev = (void *)skb->data;
	u32 num_pdev_stats;
	u32 num_pdev_ext_stats;
	u32 num_vdev_stats;
	u32 num_peer_stats;
	u32 num_bcnflt_stats;
	u32 stats_id;
	int i;

	if (!FUNC10(skb, sizeof(*ev)))
		return -EPROTO;

	num_pdev_stats = FUNC0(ev->num_pdev_stats);
	num_pdev_ext_stats = FUNC0(ev->num_pdev_ext_stats);
	num_vdev_stats = FUNC0(ev->num_vdev_stats);
	num_peer_stats = FUNC0(ev->num_peer_stats);
	num_bcnflt_stats = FUNC0(ev->num_bcnflt_stats);
	stats_id = FUNC0(ev->stats_id);

	for (i = 0; i < num_pdev_stats; i++) {
		const struct wmi_10_4_pdev_stats *src;
		struct ath10k_fw_stats_pdev *dst;

		src = (void *)skb->data;
		if (!FUNC10(skb, sizeof(*src)))
			return -EPROTO;

		dst = FUNC8(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC4(&src->base, dst);
		FUNC1(&src->tx, dst);
		FUNC6(&src->rx, dst);
		dst->rx_ovfl_errs = FUNC0(src->rx_ovfl_errs);
		FUNC5(&src->extra, dst);

		FUNC9(&dst->list, &stats->pdevs);
	}

	for (i = 0; i < num_pdev_ext_stats; i++) {
		const struct wmi_10_2_pdev_ext_stats *src;

		src = (void *)skb->data;
		if (!FUNC10(skb, sizeof(*src)))
			return -EPROTO;

		/* FIXME: expose values to userspace
		 *
		 * Note: Even though this loop seems to do nothing it is
		 * required to parse following sub-structures properly.
		 */
	}

	for (i = 0; i < num_vdev_stats; i++) {
		const struct wmi_vdev_stats *src;

		/* Ignore vdev stats here as it has only vdev id. Actual vdev
		 * stats will be retrieved from vdev extended stats.
		 */
		src = (void *)skb->data;
		if (!FUNC10(skb, sizeof(*src)))
			return -EPROTO;
	}

	for (i = 0; i < num_peer_stats; i++) {
		const struct wmi_10_4_peer_stats *src;
		struct ath10k_fw_stats_peer *dst;

		src = (void *)skb->data;
		if (!FUNC10(skb, sizeof(*src)))
			return -EPROTO;

		dst = FUNC8(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC2(src, dst);
		FUNC9(&dst->list, &stats->peers);
	}

	for (i = 0; i < num_bcnflt_stats; i++) {
		const struct wmi_10_4_bss_bcn_filter_stats *src;

		src = (void *)skb->data;
		if (!FUNC10(skb, sizeof(*src)))
			return -EPROTO;

		/* FIXME: expose values to userspace
		 *
		 * Note: Even though this loop seems to do nothing it is
		 * required to parse following sub-structures properly.
		 */
	}

	if (stats_id & WMI_10_4_STAT_PEER_EXTD) {
		stats->extended = true;

		for (i = 0; i < num_peer_stats; i++) {
			const struct wmi_10_4_peer_extd_stats *src;
			struct ath10k_fw_extd_stats_peer *dst;

			src = (void *)skb->data;
			if (!FUNC10(skb, sizeof(*src)))
				return -EPROTO;

			dst = FUNC8(sizeof(*dst), GFP_ATOMIC);
			if (!dst)
				continue;

			FUNC7(dst->peer_macaddr,
					src->peer_macaddr.addr);
			dst->rx_duration = FUNC0(src->rx_duration);
			FUNC9(&dst->list, &stats->peers_extd);
		}
	}

	if (stats_id & WMI_10_4_STAT_VDEV_EXTD) {
		for (i = 0; i < num_vdev_stats; i++) {
			const struct wmi_vdev_stats_extd *src;
			struct ath10k_fw_stats_vdev_extd *dst;

			src = (void *)skb->data;
			if (!FUNC10(skb, sizeof(*src)))
				return -EPROTO;

			dst = FUNC8(sizeof(*dst), GFP_ATOMIC);
			if (!dst)
				continue;
			FUNC3(src, dst);
			FUNC9(&dst->list, &stats->vdevs);
		}
	}

	return 0;
}