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
struct ath10k_vif {int /*<<< orphan*/ * beacon_buf; int /*<<< orphan*/  beacon_paddr; struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  dev; int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MAX_FRAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ath10k_vif *arvif)
{
	struct ath10k *ar = arvif->ar;

	FUNC2(&ar->data_lock);

	FUNC0(arvif);

	if (arvif->beacon_buf) {
		FUNC1(ar->dev, IEEE80211_MAX_FRAME_LEN,
				  arvif->beacon_buf, arvif->beacon_paddr);
		arvif->beacon_buf = NULL;
	}
}