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
typedef  int /*<<< orphan*/  u16 ;
struct wmi_ring_ba_en_cmd {int ring_id; int agg_max_wsize; int amsdu; int /*<<< orphan*/  ba_timeout; } ;
struct wil6210_priv {scalar_t__ amsdu_en; int /*<<< orphan*/  fw_capabilities; scalar_t__ use_rx_hw_reordering; scalar_t__ use_enhanced_dma_hw; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_FW_CAPABILITY_AMSDU ; 
 int /*<<< orphan*/  WMI_RING_BA_EN_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wil6210_priv*,int /*<<< orphan*/ ,int,struct wmi_ring_ba_en_cmd*,int) ; 

int FUNC4(struct wil6210_priv *wil, u8 mid,
	      u8 ringid, u8 size, u16 timeout)
{
	u8 amsdu = wil->use_enhanced_dma_hw && wil->use_rx_hw_reordering &&
		FUNC1(WMI_FW_CAPABILITY_AMSDU, wil->fw_capabilities) &&
		wil->amsdu_en;
	struct wmi_ring_ba_en_cmd cmd = {
		.ring_id = ringid,
		.agg_max_wsize = size,
		.ba_timeout = FUNC0(timeout),
		.amsdu = amsdu,
	};

	FUNC2(wil, "addba: (ring %d size %d timeout %d amsdu %d)\n",
		    ringid, size, timeout, amsdu);

	return FUNC3(wil, WMI_RING_BA_EN_CMDID, mid, &cmd, sizeof(cmd));
}