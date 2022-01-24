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
struct be_adapter {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  be_adapter_list ; 
 int /*<<< orphan*/  be_adapter_list_lock ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct be_adapter *adapter)
{
	if (FUNC2(adapter)) {
		FUNC0(&adapter->entry);
		FUNC4(&be_adapter_list_lock);
		FUNC3(&adapter->entry, &be_adapter_list);

		/* invoke add() routine of roce driver only if
		 * valid driver registered with add method and add() is not yet
		 * invoked on a given adapter.
		 */
		FUNC1(adapter);
		FUNC5(&be_adapter_list_lock);
	}
}