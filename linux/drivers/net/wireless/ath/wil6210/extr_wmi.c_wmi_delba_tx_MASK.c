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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wmi_ring_ba_dis_cmd {int /*<<< orphan*/  reason; int /*<<< orphan*/  ring_id; } ;
struct wil6210_priv {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_RING_BA_DIS_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmi_ring_ba_dis_cmd*,int) ; 

int FUNC3(struct wil6210_priv *wil, u8 mid, u8 ringid, u16 reason)
{
	struct wmi_ring_ba_dis_cmd cmd = {
		.ring_id = ringid,
		.reason = FUNC0(reason),
	};

	FUNC1(wil, "delba_tx: (ring %d reason %d)\n", ringid, reason);

	return FUNC2(wil, WMI_RING_BA_DIS_CMDID, mid, &cmd, sizeof(cmd));
}