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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  notif_wait; TYPE_1__* fw; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_UMAC_SCAN ; 
#define  SCAN_COMPLETE_UMAC 129 
#define  SCAN_OFFLOAD_COMPLETE 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iwl_mvm *mvm, int type)
{
	struct iwl_notification_wait wait_scan_done;
	static const u16 scan_done_notif[] = { SCAN_COMPLETE_UMAC,
					      SCAN_OFFLOAD_COMPLETE, };
	int ret;

	FUNC8(&mvm->mutex);

	FUNC3(&mvm->notif_wait, &wait_scan_done,
				   scan_done_notif,
				   FUNC0(scan_done_notif),
				   NULL, NULL);

	FUNC1(mvm, "Preparing to stop scan, type %x\n", type);

	if (FUNC2(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN))
		ret = FUNC5(mvm, type);
	else
		ret = FUNC4(mvm);

	if (ret) {
		FUNC1(mvm, "couldn't stop scan type %d\n", type);
		FUNC6(&mvm->notif_wait, &wait_scan_done);
		return ret;
	}

	return FUNC7(&mvm->notif_wait, &wait_scan_done,
				     1 * HZ);
}