#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ath10k_vif {scalar_t__ beacon_state; TYPE_1__* beacon; int /*<<< orphan*/  beacon_buf; struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  dev; int /*<<< orphan*/  data_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  paddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 scalar_t__ ATH10K_BEACON_SCHEDULED ; 
 scalar_t__ ATH10K_BEACON_SENT ; 
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ath10k_vif *arvif)
{
	struct ath10k *ar = arvif->ar;

	FUNC4(&ar->data_lock);

	if (!arvif->beacon)
		return;

	if (!arvif->beacon_buf)
		FUNC3(ar->dev, FUNC0(arvif->beacon)->paddr,
				 arvif->beacon->len, DMA_TO_DEVICE);

	if (FUNC1(arvif->beacon_state != ATH10K_BEACON_SCHEDULED &&
		    arvif->beacon_state != ATH10K_BEACON_SENT))
		return;

	FUNC2(arvif->beacon);

	arvif->beacon = NULL;
	arvif->beacon_state = ATH10K_BEACON_SCHEDULED;
}