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
struct mwifiex_radar_params {scalar_t__ cac_time_ms; struct cfg80211_chan_def* chandef; } ;
struct mwifiex_private {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_CHAN_REPORT_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_radar_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_radar_params*,int) ; 

int FUNC2(struct mwifiex_private *priv,
				 struct cfg80211_chan_def *chandef)
{
	struct mwifiex_radar_params radar_params;

	FUNC0(&radar_params, 0, sizeof(struct mwifiex_radar_params));
	radar_params.chandef = chandef;
	radar_params.cac_time_ms = 0;

	return FUNC1(priv, HostCmd_CMD_CHAN_REPORT_REQUEST,
				HostCmd_ACT_GEN_SET, 0, &radar_params, true);
}