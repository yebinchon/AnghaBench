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
struct TYPE_2__ {int /*<<< orphan*/  tx_lock; } ;
struct ath10k {int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_paused; TYPE_1__ htt; } ;

/* Variables and functions */
 int ATH10K_TX_PAUSE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ath10k *ar, int reason)
{
	FUNC3(&ar->htt.tx_lock);

	FUNC1(reason >= ATH10K_TX_PAUSE_MAX);
	ar->tx_paused |= FUNC0(reason);
	FUNC2(ar->hw);
}