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
struct ath10k_vif {int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  tx_paused; struct ath10k* ar; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; } ;
struct ath10k {int /*<<< orphan*/  hw; TYPE_1__ htt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ath10k_vif *arvif, int reason)
{
	struct ath10k *ar = arvif->ar;

	FUNC3(&ar->htt.tx_lock);

	FUNC1(reason >= BITS_PER_LONG);
	arvif->tx_paused |= FUNC0(reason);
	FUNC2(ar->hw, arvif->vdev_id);
}