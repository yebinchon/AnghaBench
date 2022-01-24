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
struct ath10k {TYPE_1__ htt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath10k *ar)
{
	FUNC1(&ar->htt.tx_lock);
	FUNC0(ar);
	FUNC2(&ar->htt.tx_lock);
}