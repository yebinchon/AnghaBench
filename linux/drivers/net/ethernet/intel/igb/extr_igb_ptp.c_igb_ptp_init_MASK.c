#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ptp_pin_desc {int index; int /*<<< orphan*/  func; int /*<<< orphan*/  name; } ;
struct net_device {int dev_addr; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int max_adj; int pps; int n_pins; int /*<<< orphan*/  verify; void* enable; void* settime64; int /*<<< orphan*/  gettimex64; void* adjtime; void* adjfine; struct ptp_pin_desc* pin_config; int /*<<< orphan*/  n_per_out; int /*<<< orphan*/  n_ext_ts; void* owner; int /*<<< orphan*/  name; int /*<<< orphan*/  adjfreq; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_type; int /*<<< orphan*/  rx_filter; } ;
struct TYPE_9__ {int mult; int /*<<< orphan*/  shift; void* mask; int /*<<< orphan*/  read; } ;
struct TYPE_8__ {int type; } ;
struct e1000_hw {TYPE_3__ mac; } ;
struct igb_adapter {int ptp_flags; struct net_device* netdev; TYPE_2__* pdev; int /*<<< orphan*/ * ptp_clock; TYPE_5__ ptp_caps; TYPE_1__ tstamp_config; int /*<<< orphan*/  ptp_overflow_work; int /*<<< orphan*/  ptp_tx_work; int /*<<< orphan*/  tmreg_lock; struct ptp_pin_desc* sdp_config; TYPE_4__ cc; struct e1000_hw hw; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  HWTSTAMP_FILTER_NONE ; 
 int /*<<< orphan*/  HWTSTAMP_TX_OFF ; 
 int /*<<< orphan*/  IGB_82576_TSYNC_SHIFT ; 
 int IGB_NBITS_82580 ; 
 int /*<<< orphan*/  IGB_N_EXTTS ; 
 int /*<<< orphan*/  IGB_N_PEROUT ; 
 int IGB_N_SDP ; 
 int IGB_PTP_ENABLED ; 
 int IGB_PTP_OVERFLOW_CHECK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PTP_PF_NONE ; 
 void* THIS_MODULE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
#define  e1000_82576 133 
#define  e1000_82580 132 
#define  e1000_i210 131 
#define  e1000_i211 130 
#define  e1000_i350 129 
#define  e1000_i354 128 
 void* igb_ptp_adjfine_82580 ; 
 int /*<<< orphan*/  igb_ptp_adjfreq_82576 ; 
 void* igb_ptp_adjtime_82576 ; 
 void* igb_ptp_adjtime_i210 ; 
 void* igb_ptp_feature_enable ; 
 void* igb_ptp_feature_enable_i210 ; 
 int /*<<< orphan*/  igb_ptp_gettimex_82576 ; 
 int /*<<< orphan*/  igb_ptp_gettimex_82580 ; 
 int /*<<< orphan*/  igb_ptp_gettimex_i210 ; 
 int /*<<< orphan*/  igb_ptp_overflow_check ; 
 int /*<<< orphan*/  igb_ptp_read_82576 ; 
 int /*<<< orphan*/  igb_ptp_read_82580 ; 
 int /*<<< orphan*/  FUNC6 (struct igb_adapter*) ; 
 void* igb_ptp_settime_82576 ; 
 void* igb_ptp_settime_i210 ; 
 int /*<<< orphan*/  igb_ptp_tx_work ; 
 int /*<<< orphan*/  igb_ptp_verify_pin ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	int i;

	switch (hw->mac.type) {
	case e1000_82576:
		FUNC8(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
		adapter->ptp_caps.owner = THIS_MODULE;
		adapter->ptp_caps.max_adj = 999999881;
		adapter->ptp_caps.n_ext_ts = 0;
		adapter->ptp_caps.pps = 0;
		adapter->ptp_caps.adjfreq = igb_ptp_adjfreq_82576;
		adapter->ptp_caps.adjtime = igb_ptp_adjtime_82576;
		adapter->ptp_caps.gettimex64 = igb_ptp_gettimex_82576;
		adapter->ptp_caps.settime64 = igb_ptp_settime_82576;
		adapter->ptp_caps.enable = igb_ptp_feature_enable;
		adapter->cc.read = igb_ptp_read_82576;
		adapter->cc.mask = FUNC0(64);
		adapter->cc.mult = 1;
		adapter->cc.shift = IGB_82576_TSYNC_SHIFT;
		adapter->ptp_flags |= IGB_PTP_OVERFLOW_CHECK;
		break;
	case e1000_82580:
	case e1000_i354:
	case e1000_i350:
		FUNC8(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
		adapter->ptp_caps.owner = THIS_MODULE;
		adapter->ptp_caps.max_adj = 62499999;
		adapter->ptp_caps.n_ext_ts = 0;
		adapter->ptp_caps.pps = 0;
		adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;
		adapter->ptp_caps.adjtime = igb_ptp_adjtime_82576;
		adapter->ptp_caps.gettimex64 = igb_ptp_gettimex_82580;
		adapter->ptp_caps.settime64 = igb_ptp_settime_82576;
		adapter->ptp_caps.enable = igb_ptp_feature_enable;
		adapter->cc.read = igb_ptp_read_82580;
		adapter->cc.mask = FUNC0(IGB_NBITS_82580);
		adapter->cc.mult = 1;
		adapter->cc.shift = 0;
		adapter->ptp_flags |= IGB_PTP_OVERFLOW_CHECK;
		break;
	case e1000_i210:
	case e1000_i211:
		for (i = 0; i < IGB_N_SDP; i++) {
			struct ptp_pin_desc *ppd = &adapter->sdp_config[i];

			FUNC8(ppd->name, sizeof(ppd->name), "SDP%d", i);
			ppd->index = i;
			ppd->func = PTP_PF_NONE;
		}
		FUNC8(adapter->ptp_caps.name, 16, "%pm", netdev->dev_addr);
		adapter->ptp_caps.owner = THIS_MODULE;
		adapter->ptp_caps.max_adj = 62499999;
		adapter->ptp_caps.n_ext_ts = IGB_N_EXTTS;
		adapter->ptp_caps.n_per_out = IGB_N_PEROUT;
		adapter->ptp_caps.n_pins = IGB_N_SDP;
		adapter->ptp_caps.pps = 1;
		adapter->ptp_caps.pin_config = adapter->sdp_config;
		adapter->ptp_caps.adjfine = igb_ptp_adjfine_82580;
		adapter->ptp_caps.adjtime = igb_ptp_adjtime_i210;
		adapter->ptp_caps.gettimex64 = igb_ptp_gettimex_i210;
		adapter->ptp_caps.settime64 = igb_ptp_settime_i210;
		adapter->ptp_caps.enable = igb_ptp_feature_enable_i210;
		adapter->ptp_caps.verify = igb_ptp_verify_pin;
		break;
	default:
		adapter->ptp_clock = NULL;
		return;
	}

	FUNC9(&adapter->tmreg_lock);
	FUNC2(&adapter->ptp_tx_work, igb_ptp_tx_work);

	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
		FUNC1(&adapter->ptp_overflow_work,
				  igb_ptp_overflow_check);

	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;

	FUNC6(adapter);

	adapter->ptp_clock = FUNC7(&adapter->ptp_caps,
						&adapter->pdev->dev);
	if (FUNC3(adapter->ptp_clock)) {
		adapter->ptp_clock = NULL;
		FUNC4(&adapter->pdev->dev, "ptp_clock_register failed\n");
	} else if (adapter->ptp_clock) {
		FUNC5(&adapter->pdev->dev, "added PHC on %s\n",
			 adapter->netdev->name);
		adapter->ptp_flags |= IGB_PTP_ENABLED;
	}
}