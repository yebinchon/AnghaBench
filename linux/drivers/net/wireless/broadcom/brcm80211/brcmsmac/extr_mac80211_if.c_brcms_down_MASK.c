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
typedef  scalar_t__ uint ;
struct brcms_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  wlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct brcms_info *wl)
{
	uint callbacks, ret_val = 0;

	/* call common down function */
	ret_val = FUNC2(wl->wlc);
	callbacks = FUNC1(&wl->callbacks) - ret_val;

	/* wait for down callbacks to complete */
	FUNC4(&wl->lock);

	/* For HIGH_only driver, it's important to actually schedule other work,
	 * not just spin wait since everything runs at schedule level
	 */
	FUNC0((FUNC1(&wl->callbacks) > callbacks), 100 * 1000);

	FUNC3(&wl->lock);
}