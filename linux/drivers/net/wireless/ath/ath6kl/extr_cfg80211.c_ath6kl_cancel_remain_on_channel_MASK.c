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
typedef  scalar_t__ u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ath6kl_vif {scalar_t__ last_roc_id; int /*<<< orphan*/  fw_vif_idx; scalar_t__ last_cancel_roc_id; int /*<<< orphan*/  ndev; } ;
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ath6kl* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ath6kl_vif* FUNC1 (struct wireless_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy,
					   struct wireless_dev *wdev,
					   u64 cookie)
{
	struct ath6kl_vif *vif = FUNC1(wdev);
	struct ath6kl *ar = FUNC0(vif->ndev);

	if (cookie != vif->last_roc_id)
		return -ENOENT;
	vif->last_cancel_roc_id = cookie;

	return FUNC2(ar->wmi, vif->fw_vif_idx);
}