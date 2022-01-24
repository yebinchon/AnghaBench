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
typedef  int u64 ;
typedef  int u32 ;
struct wmi_tlv_vdev_stats {int dummy; } ;
struct wmi_tlv_stats_ev {int /*<<< orphan*/  num_peer_stats_extd; int /*<<< orphan*/  stats_id; int /*<<< orphan*/  num_chan_stats; int /*<<< orphan*/  num_bcnflt_stats; int /*<<< orphan*/  num_peer_stats; int /*<<< orphan*/  num_vdev_stats; int /*<<< orphan*/  num_pdev_stats; } ;
struct wmi_tlv_peer_stats_extd {int /*<<< orphan*/  rx_duration_high; int /*<<< orphan*/  rx_duration; } ;
struct wmi_pdev_stats {int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  base; } ;
struct wmi_10x_peer_stats {int /*<<< orphan*/  peer_rx_rate; int /*<<< orphan*/  old; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k_fw_stats_vdev {int /*<<< orphan*/  list; } ;
struct ath10k_fw_stats_peer {int rx_duration; int /*<<< orphan*/  list; void* peer_rx_rate; } ;
struct ath10k_fw_stats_pdev {int /*<<< orphan*/  list; } ;
struct ath10k_fw_stats {int /*<<< orphan*/  peers; int /*<<< orphan*/  vdevs; int /*<<< orphan*/  pdevs; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int EPROTO ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (void const**) ; 
 int FUNC2 (void const**) ; 
 int /*<<< orphan*/  WMI_TLV_PEER_RX_DURATION_HIGH_MASK ; 
 int /*<<< orphan*/  WMI_TLV_PEER_RX_DURATION_HIGH_VALID_BIT ; 
 int WMI_TLV_PEER_RX_DURATION_SHIFT ; 
 int WMI_TLV_STAT_PEER_EXTD ; 
 size_t WMI_TLV_TAG_ARRAY_BYTE ; 
 size_t WMI_TLV_TAG_STRUCT_STATS_EVENT ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct ath10k_fw_stats_pdev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ath10k_fw_stats_peer*) ; 
 size_t FUNC10 (void const*) ; 
 void** FUNC11 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wmi_tlv_vdev_stats const*,struct ath10k_fw_stats_vdev*) ; 
 int /*<<< orphan*/  FUNC13 (void const**) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC17(struct ath10k *ar,
					   struct sk_buff *skb,
					   struct ath10k_fw_stats *stats)
{
	const void **tb;
	const struct wmi_tlv_stats_ev *ev;
	u32 num_peer_stats_extd;
	const void *data;
	u32 num_pdev_stats;
	u32 num_vdev_stats;
	u32 num_peer_stats;
	u32 num_bcnflt_stats;
	u32 num_chan_stats;
	size_t data_len;
	u32 stats_id;
	int ret;
	int i;

	tb = FUNC11(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC1(tb)) {
		ret = FUNC2(tb);
		FUNC5(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_STATS_EVENT];
	data = tb[WMI_TLV_TAG_ARRAY_BYTE];

	if (!ev || !data) {
		FUNC13(tb);
		return -EPROTO;
	}

	data_len = FUNC10(data);
	num_pdev_stats = FUNC3(ev->num_pdev_stats);
	num_vdev_stats = FUNC3(ev->num_vdev_stats);
	num_peer_stats = FUNC3(ev->num_peer_stats);
	num_bcnflt_stats = FUNC3(ev->num_bcnflt_stats);
	num_chan_stats = FUNC3(ev->num_chan_stats);
	stats_id = FUNC3(ev->stats_id);
	num_peer_stats_extd = FUNC3(ev->num_peer_stats_extd);

	FUNC4(ar, ATH10K_DBG_WMI,
		   "wmi tlv stats update pdev %i vdev %i peer %i bcnflt %i chan %i peer_extd %i\n",
		   num_pdev_stats, num_vdev_stats, num_peer_stats,
		   num_bcnflt_stats, num_chan_stats, num_peer_stats_extd);

	for (i = 0; i < num_pdev_stats; i++) {
		const struct wmi_pdev_stats *src;
		struct ath10k_fw_stats_pdev *dst;

		src = data;
		if (data_len < sizeof(*src)) {
			FUNC13(tb);
			return -EPROTO;
		}

		data += sizeof(*src);
		data_len -= sizeof(*src);

		dst = FUNC14(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC6(&src->base, dst);
		FUNC8(&src->tx, dst);
		FUNC7(&src->rx, dst);
		FUNC15(&dst->list, &stats->pdevs);
	}

	for (i = 0; i < num_vdev_stats; i++) {
		const struct wmi_tlv_vdev_stats *src;
		struct ath10k_fw_stats_vdev *dst;

		src = data;
		if (data_len < sizeof(*src)) {
			FUNC13(tb);
			return -EPROTO;
		}

		data += sizeof(*src);
		data_len -= sizeof(*src);

		dst = FUNC14(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC12(src, dst);
		FUNC15(&dst->list, &stats->vdevs);
	}

	for (i = 0; i < num_peer_stats; i++) {
		const struct wmi_10x_peer_stats *src;
		struct ath10k_fw_stats_peer *dst;

		src = data;
		if (data_len < sizeof(*src)) {
			FUNC13(tb);
			return -EPROTO;
		}

		data += sizeof(*src);
		data_len -= sizeof(*src);

		dst = FUNC14(sizeof(*dst), GFP_ATOMIC);
		if (!dst)
			continue;

		FUNC9(&src->old, dst);
		dst->peer_rx_rate = FUNC3(src->peer_rx_rate);

		if (stats_id & WMI_TLV_STAT_PEER_EXTD) {
			const struct wmi_tlv_peer_stats_extd *extd;
			unsigned long rx_duration_high;

			extd = data + sizeof(*src) * (num_peer_stats - i - 1)
			       + sizeof(*extd) * i;

			dst->rx_duration = FUNC3(extd->rx_duration);
			rx_duration_high = FUNC3
						(extd->rx_duration_high);

			if (FUNC16(WMI_TLV_PEER_RX_DURATION_HIGH_VALID_BIT,
				     &rx_duration_high)) {
				rx_duration_high =
					FUNC0(WMI_TLV_PEER_RX_DURATION_HIGH_MASK,
						  rx_duration_high);
				dst->rx_duration |= (u64)rx_duration_high <<
						    WMI_TLV_PEER_RX_DURATION_SHIFT;
			}
		}

		FUNC15(&dst->list, &stats->peers);
	}

	FUNC13(tb);
	return 0;
}