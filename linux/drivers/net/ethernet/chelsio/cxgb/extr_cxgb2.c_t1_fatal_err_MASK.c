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
struct adapter {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  sge; } ;

/* Variables and functions */
 int FULL_INIT_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct adapter *adapter)
{
	if (adapter->flags & FULL_INIT_DONE) {
		FUNC2(adapter->sge);
		FUNC1(adapter);
	}
	FUNC0("%s: encountered fatal error, operation suspended\n",
		 adapter->name);
}