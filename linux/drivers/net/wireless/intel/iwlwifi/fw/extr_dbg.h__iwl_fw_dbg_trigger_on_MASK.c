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
struct wireless_dev {int dummy; } ;
struct iwl_fw_runtime {int /*<<< orphan*/  fw; int /*<<< orphan*/  trans; } ;
struct iwl_fw_dbg_trigger_tlv {int dummy; } ;
typedef  enum iwl_fw_dbg_trigger { ____Placeholder_iwl_fw_dbg_trigger } iwl_fw_dbg_trigger ;

/* Variables and functions */
 struct iwl_fw_dbg_trigger_tlv* FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*,struct wireless_dev*,struct iwl_fw_dbg_trigger_tlv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct iwl_fw_dbg_trigger_tlv*
FUNC4(struct iwl_fw_runtime *fwrt,
		       struct wireless_dev *wdev,
		       const enum iwl_fw_dbg_trigger id)
{
	struct iwl_fw_dbg_trigger_tlv *trig;

	if (FUNC3(fwrt->trans))
		return NULL;

	if (!FUNC2(fwrt->fw, id))
		return NULL;

	trig = FUNC0(fwrt->fw, id);

	if (!FUNC1(fwrt, wdev, trig))
		return NULL;

	return trig;
}