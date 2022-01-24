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
typedef  int u8 ;
struct device {int dummy; } ;
struct ath6kl_sta {int dummy; } ;
struct ath6kl {int p2p; int vif_max; int max_norm_iface; int intra_bss; int /*<<< orphan*/  ap_country_code; int /*<<< orphan*/  mcastpsq; TYPE_1__* sta_list; int /*<<< orphan*/  state; int /*<<< orphan*/  lrssi_roam_threshold; scalar_t__ tx_pwr; int /*<<< orphan*/  flag; int /*<<< orphan*/  vif_list; int /*<<< orphan*/  amsdu_rx_buffer_queue; int /*<<< orphan*/  sem; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  mcastpsq_lock; int /*<<< orphan*/  lock; struct device* dev; } ;
struct aggr_info_conn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  aggr_conn; int /*<<< orphan*/  mgmt_psq; scalar_t__ mgmt_psq_len; int /*<<< orphan*/  apsdq; int /*<<< orphan*/  psq; int /*<<< orphan*/  psq_lock; } ;

/* Variables and functions */
 int AP_MAX_NUM_STA ; 
 int /*<<< orphan*/  ATH6KL_STATE_OFF ; 
 int /*<<< orphan*/  DEF_AP_COUNTRY_CODE ; 
 int /*<<< orphan*/  DEF_LRSSI_ROAM_THRESHOLD ; 
 int /*<<< orphan*/  DESTROY_IN_PROGRESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SKIP_SCAN ; 
 int /*<<< orphan*/  WMI_ENABLED ; 
 struct ath6kl* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ath6kl_p2p ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct ath6kl *FUNC12(struct device *dev)
{
	struct ath6kl *ar;
	u8 ctr;

	ar = FUNC1();
	if (!ar)
		return NULL;

	ar->p2p = !!ath6kl_p2p;
	ar->dev = dev;

	ar->vif_max = 1;

	ar->max_norm_iface = 1;

	FUNC11(&ar->lock);
	FUNC11(&ar->mcastpsq_lock);
	FUNC11(&ar->list_lock);

	FUNC5(&ar->event_wq);
	FUNC9(&ar->sem, 1);

	FUNC0(&ar->amsdu_rx_buffer_queue);
	FUNC0(&ar->vif_list);

	FUNC4(WMI_ENABLED, &ar->flag);
	FUNC4(SKIP_SCAN, &ar->flag);
	FUNC4(DESTROY_IN_PROGRESS, &ar->flag);

	ar->tx_pwr = 0;
	ar->intra_bss = 1;
	ar->lrssi_roam_threshold = DEF_LRSSI_ROAM_THRESHOLD;

	ar->state = ATH6KL_STATE_OFF;

	FUNC8((u8 *)ar->sta_list, 0,
	       AP_MAX_NUM_STA * sizeof(struct ath6kl_sta));

	/* Init the PS queues */
	for (ctr = 0; ctr < AP_MAX_NUM_STA; ctr++) {
		FUNC11(&ar->sta_list[ctr].psq_lock);
		FUNC10(&ar->sta_list[ctr].psq);
		FUNC10(&ar->sta_list[ctr].apsdq);
		ar->sta_list[ctr].mgmt_psq_len = 0;
		FUNC0(&ar->sta_list[ctr].mgmt_psq);
		ar->sta_list[ctr].aggr_conn =
			FUNC6(sizeof(struct aggr_info_conn), GFP_KERNEL);
		if (!ar->sta_list[ctr].aggr_conn) {
			FUNC3("Failed to allocate memory for sta aggregation information\n");
			FUNC2(ar);
			return NULL;
		}
	}

	FUNC10(&ar->mcastpsq);

	FUNC7(ar->ap_country_code, DEF_AP_COUNTRY_CODE, 3);

	return ar;
}