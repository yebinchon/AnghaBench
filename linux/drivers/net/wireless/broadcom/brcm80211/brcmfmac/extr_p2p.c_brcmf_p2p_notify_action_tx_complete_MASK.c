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
struct brcmf_p2p_info {int /*<<< orphan*/  send_af_done; int /*<<< orphan*/  status; int /*<<< orphan*/  wait_for_offchan_complete; } ;
struct brcmf_if {TYPE_1__* drvr; } ;
struct brcmf_event_msg {scalar_t__ event_code; scalar_t__ status; } ;
struct brcmf_cfg80211_info {struct brcmf_p2p_info p2p; } ;
struct TYPE_2__ {struct brcmf_cfg80211_info* config; } ;

/* Variables and functions */
 scalar_t__ BRCMF_E_ACTION_FRAME_COMPLETE ; 
 scalar_t__ BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE ; 
 scalar_t__ BRCMF_E_STATUS_SUCCESS ; 
 int /*<<< orphan*/  BRCMF_P2P_STATUS_ACTION_TX_COMPLETED ; 
 int /*<<< orphan*/  BRCMF_P2P_STATUS_ACTION_TX_NOACK ; 
 int /*<<< orphan*/  BRCMF_P2P_STATUS_SENDING_ACT_FRAME ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct brcmf_if *ifp,
					const struct brcmf_event_msg *e,
					void *data)
{
	struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
	struct brcmf_p2p_info *p2p = &cfg->p2p;

	FUNC0(INFO, "Enter: event %s, status=%d\n",
		  e->event_code == BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE ?
		  "ACTION_FRAME_OFF_CHAN_COMPLETE" : "ACTION_FRAME_COMPLETE",
		  e->status);

	if (!FUNC4(BRCMF_P2P_STATUS_SENDING_ACT_FRAME, &p2p->status))
		return 0;

	if (e->event_code == BRCMF_E_ACTION_FRAME_COMPLETE) {
		if (e->status == BRCMF_E_STATUS_SUCCESS) {
			FUNC3(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED,
				&p2p->status);
			if (!p2p->wait_for_offchan_complete)
				FUNC2(&p2p->send_af_done);
		} else {
			FUNC3(BRCMF_P2P_STATUS_ACTION_TX_NOACK, &p2p->status);
			/* If there is no ack, we don't need to wait for
			 * WLC_E_ACTION_FRAME_OFFCHAN_COMPLETE event
			 */
			FUNC1(cfg);
		}

	} else {
		FUNC2(&p2p->send_af_done);
	}
	return 0;
}