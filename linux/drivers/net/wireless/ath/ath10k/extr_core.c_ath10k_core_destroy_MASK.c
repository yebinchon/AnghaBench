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
struct ath10k {int /*<<< orphan*/  htt; int /*<<< orphan*/  workqueue_aux; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct ath10k *ar)
{
	FUNC6(ar->workqueue);
	FUNC5(ar->workqueue);

	FUNC6(ar->workqueue_aux);
	FUNC5(ar->workqueue_aux);

	FUNC1(ar);
	FUNC0(ar);
	FUNC2(&ar->htt);
	FUNC4(ar);
	FUNC3(ar);
}