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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_vif_iter {struct ath10k_vif* arvif; int /*<<< orphan*/  vdev_id; } ;
struct ath10k_vif {int dummy; } ;
struct ath10k {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  ath10k_get_arvif_iter ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath10k_vif_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_vif_iter*,int /*<<< orphan*/ ,int) ; 

struct ath10k_vif *FUNC3(struct ath10k *ar, u32 vdev_id)
{
	struct ath10k_vif_iter arvif_iter;
	u32 flags;

	FUNC2(&arvif_iter, 0, sizeof(struct ath10k_vif_iter));
	arvif_iter.vdev_id = vdev_id;

	flags = IEEE80211_IFACE_ITER_RESUME_ALL;
	FUNC1(ar->hw,
						   flags,
						   ath10k_get_arvif_iter,
						   &arvif_iter);
	if (!arvif_iter.arvif) {
		FUNC0(ar, "No VIF found for vdev %d\n", vdev_id);
		return NULL;
	}

	return arvif_iter.arvif;
}