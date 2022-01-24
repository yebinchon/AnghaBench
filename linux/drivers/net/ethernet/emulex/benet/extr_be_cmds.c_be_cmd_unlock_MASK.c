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
struct be_adapter {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 void FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 

__attribute__((used)) static void FUNC2(struct be_adapter *adapter)
{
	if (FUNC1(adapter))
		return FUNC0(&adapter->mcc_lock);
	else
		return FUNC0(&adapter->mbox_lock);
}