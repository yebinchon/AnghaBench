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
struct wil_net_stats {int /*<<< orphan*/  rx_amsdu_error; int /*<<< orphan*/  rx_replay; int /*<<< orphan*/  rx_key_error; int /*<<< orphan*/  rx_mic_error; } ;
struct wil6210_priv {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;

/* Variables and functions */
 int EFAULT ; 
 int WIL_RX_EDMA_ERROR_AMSDU ; 
 int WIL_RX_EDMA_ERROR_KEY ; 
 int WIL_RX_EDMA_ERROR_MIC ; 
 int WIL_RX_EDMA_ERROR_REPLAY ; 
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct wil_net_stats*) ; 
 int FUNC3 (void*) ; 
 void* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct wil6210_priv *wil,
				   struct sk_buff *skb,
				   struct wil_net_stats *stats)
{
	int l2_rx_status;
	void *msg = FUNC4(skb);

	l2_rx_status = FUNC3(msg);
	if (l2_rx_status != 0) {
		FUNC0(wil, "L2 RX error, l2_rx_status=0x%x\n",
			     l2_rx_status);
		/* Due to HW issue, KEY error will trigger a MIC error */
		if (l2_rx_status == WIL_RX_EDMA_ERROR_MIC) {
			FUNC1(wil,
					    "L2 MIC/KEY error, dropping packet\n");
			stats->rx_mic_error++;
		}
		if (l2_rx_status == WIL_RX_EDMA_ERROR_KEY) {
			FUNC1(wil,
					    "L2 KEY error, dropping packet\n");
			stats->rx_key_error++;
		}
		if (l2_rx_status == WIL_RX_EDMA_ERROR_REPLAY) {
			FUNC1(wil,
					    "L2 REPLAY error, dropping packet\n");
			stats->rx_replay++;
		}
		if (l2_rx_status == WIL_RX_EDMA_ERROR_AMSDU) {
			FUNC1(wil,
					    "L2 AMSDU error, dropping packet\n");
			stats->rx_amsdu_error++;
		}
		return -EFAULT;
	}

	skb->ip_summed = FUNC2(msg, stats);

	return 0;
}