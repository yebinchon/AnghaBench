#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_2__* fw; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_6__ {scalar_t__ n_channels; } ;
struct ieee80211_scan_request {int /*<<< orphan*/  ies; TYPE_3__ req; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {scalar_t__ n_scan_channels; } ;
struct TYPE_5__ {TYPE_1__ ucode_capa; } ;

/* Variables and functions */
 int EINVAL ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct iwl_mvm*,struct ieee80211_vif*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
			       struct ieee80211_vif *vif,
			       struct ieee80211_scan_request *hw_req)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	int ret;

	if (hw_req->req.n_channels == 0 ||
	    hw_req->req.n_channels > mvm->fw->ucode_capa.n_scan_channels)
		return -EINVAL;

	FUNC2(&mvm->mutex);
	ret = FUNC1(mvm, vif, &hw_req->req, &hw_req->ies);
	FUNC3(&mvm->mutex);

	return ret;
}