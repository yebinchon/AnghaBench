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
struct wmi {int traffic_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int /*<<< orphan*/  WMI_DISCONNECT_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct wmi *wmi, u8 if_idx)
{
	int ret;

	FUNC0(ATH6KL_DBG_WMI, "wmi disconnect\n");

	wmi->traffic_class = 100;

	/* Disconnect command does not need to do a SYNC before. */
	ret = FUNC1(wmi, if_idx, WMI_DISCONNECT_CMDID);

	return ret;
}