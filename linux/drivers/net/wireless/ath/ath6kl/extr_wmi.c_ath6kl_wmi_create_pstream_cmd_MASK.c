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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct wmi_create_pstream_cmd {int user_pri; int traffic_class; scalar_t__ traffic_direc; scalar_t__ traffic_type; scalar_t__ voice_psc_cap; int tsid; int nominal_phy; int /*<<< orphan*/  min_phy_rate; } ;
struct wmi {int fat_pipe_exist; int* stream_exist_for_ac; int /*<<< orphan*/  parent_dev; int /*<<< orphan*/  lock; } ;
struct sk_buff {scalar_t__ data; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 scalar_t__ BIDIR_TRAFFIC ; 
 scalar_t__ DISABLE_FOR_THIS_AC ; 
 scalar_t__ DNLINK_TRAFFIC ; 
 int EINVAL ; 
 scalar_t__ ENABLE_FOR_ALL_AC ; 
 scalar_t__ ENABLE_FOR_THIS_AC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 scalar_t__ TRAFFIC_TYPE_APERIODIC ; 
 scalar_t__ TRAFFIC_TYPE_PERIODIC ; 
 scalar_t__ UPLINK_TRAFFIC ; 
 int /*<<< orphan*/  WMI_CREATE_PSTREAM_CMDID ; 
 int WMI_IMPLICIT_PSTREAM ; 
 int WMI_MAX_THINSTREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct wmi*,int,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wmi_create_pstream_cmd*,struct wmi_create_pstream_cmd*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int* up_to_ac ; 

int FUNC8(struct wmi *wmi, u8 if_idx,
				  struct wmi_create_pstream_cmd *params)
{
	struct sk_buff *skb;
	struct wmi_create_pstream_cmd *cmd;
	u8 fatpipe_exist_for_ac = 0;
	s32 min_phy = 0;
	s32 nominal_phy = 0;
	int ret;

	if (!((params->user_pri <= 0x7) &&
	      (up_to_ac[params->user_pri & 0x7] == params->traffic_class) &&
	      (params->traffic_direc == UPLINK_TRAFFIC ||
	       params->traffic_direc == DNLINK_TRAFFIC ||
	       params->traffic_direc == BIDIR_TRAFFIC) &&
	      (params->traffic_type == TRAFFIC_TYPE_APERIODIC ||
	       params->traffic_type == TRAFFIC_TYPE_PERIODIC) &&
	      (params->voice_psc_cap == DISABLE_FOR_THIS_AC ||
	       params->voice_psc_cap == ENABLE_FOR_THIS_AC ||
	       params->voice_psc_cap == ENABLE_FOR_ALL_AC) &&
	      (params->tsid == WMI_IMPLICIT_PSTREAM ||
	       params->tsid <= WMI_MAX_THINSTREAM))) {
		return -EINVAL;
	}

	/*
	 * Check nominal PHY rate is >= minimalPHY,
	 * so that DUT can allow TSRS IE
	 */

	/* Get the physical rate (units of bps) */
	min_phy = ((FUNC4(params->min_phy_rate) / 1000) / 1000);

	/* Check minimal phy < nominal phy rate */
	if (params->nominal_phy >= min_phy) {
		/* unit of 500 kbps */
		nominal_phy = (params->nominal_phy * 1000) / 500;
		FUNC0(ATH6KL_DBG_WMI,
			   "TSRS IE enabled::MinPhy %x->NominalPhy ===> %x\n",
			   min_phy, nominal_phy);

		params->nominal_phy = nominal_phy;
	} else {
		params->nominal_phy = 0;
	}

	skb = FUNC3(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	FUNC0(ATH6KL_DBG_WMI,
		   "sending create_pstream_cmd: ac=%d  tsid:%d\n",
		   params->traffic_class, params->tsid);

	cmd = (struct wmi_create_pstream_cmd *) skb->data;
	FUNC5(cmd, params, sizeof(*cmd));

	/* This is an implicitly created Fat pipe */
	if ((u32) params->tsid == (u32) WMI_IMPLICIT_PSTREAM) {
		FUNC6(&wmi->lock);
		fatpipe_exist_for_ac = (wmi->fat_pipe_exist &
					(1 << params->traffic_class));
		wmi->fat_pipe_exist |= (1 << params->traffic_class);
		FUNC7(&wmi->lock);
	} else {
		/* explicitly created thin stream within a fat pipe */
		FUNC6(&wmi->lock);
		fatpipe_exist_for_ac = (wmi->fat_pipe_exist &
					(1 << params->traffic_class));
		wmi->stream_exist_for_ac[params->traffic_class] |=
		    (1 << params->tsid);
		/*
		 * If a thinstream becomes active, the fat pipe automatically
		 * becomes active
		 */
		wmi->fat_pipe_exist |= (1 << params->traffic_class);
		FUNC7(&wmi->lock);
	}

	/*
	 * Indicate activty change to driver layer only if this is the
	 * first TSID to get created in this AC explicitly or an implicit
	 * fat pipe is getting created.
	 */
	if (!fatpipe_exist_for_ac)
		FUNC1(wmi->parent_dev,
					    params->traffic_class, true);

	ret = FUNC2(wmi, if_idx, skb, WMI_CREATE_PSTREAM_CMDID,
				  NO_SYNC_WMIFLAG);
	return ret;
}