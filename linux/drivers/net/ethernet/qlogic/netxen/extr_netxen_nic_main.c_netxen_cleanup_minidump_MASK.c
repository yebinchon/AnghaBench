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
struct TYPE_2__ {int /*<<< orphan*/ * md_capture_buff; int /*<<< orphan*/ * md_template; } ;
struct netxen_adapter {TYPE_1__ mdump; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC2(struct netxen_adapter *adapter)
{
	FUNC0(adapter->mdump.md_template);
	adapter->mdump.md_template = NULL;

	if (adapter->mdump.md_capture_buff) {
		FUNC1(adapter->mdump.md_capture_buff);
		adapter->mdump.md_capture_buff = NULL;
	}
}