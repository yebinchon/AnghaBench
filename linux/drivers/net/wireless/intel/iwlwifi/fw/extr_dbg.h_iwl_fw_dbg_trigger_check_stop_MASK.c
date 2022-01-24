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
typedef  int u32 ;
struct wireless_dev {int dummy; } ;
struct iwl_fw_runtime {int dummy; } ;
struct iwl_fw_dbg_trigger_tlv {int /*<<< orphan*/  id; int /*<<< orphan*/  trig_dis_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*,int /*<<< orphan*/ ) ; 
 int USEC_PER_MSEC ; 
 scalar_t__ FUNC1 (struct iwl_fw_runtime*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct iwl_fw_runtime*,struct iwl_fw_dbg_trigger_tlv*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_fw_dbg_trigger_tlv*,struct wireless_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC6(struct iwl_fw_runtime *fwrt,
			      struct wireless_dev *wdev,
			      struct iwl_fw_dbg_trigger_tlv *trig)
{
	u32 usec = FUNC4(trig->trig_dis_ms) * USEC_PER_MSEC;

	if (wdev && !FUNC3(trig, wdev))
		return false;

	if (FUNC1(fwrt, FUNC5(trig->id), usec)) {
		FUNC0(fwrt, "Trigger %d occurred while no-collect window.\n",
			 trig->id);
		return false;
	}

	return FUNC2(fwrt, trig);
}