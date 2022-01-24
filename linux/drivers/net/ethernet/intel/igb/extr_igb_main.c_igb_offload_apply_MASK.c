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
struct igb_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 

__attribute__((used)) static void FUNC5(struct igb_adapter *adapter, s32 queue)
{
	if (!FUNC4(adapter)) {
		FUNC0(adapter, true);
		return;
	}

	FUNC1(adapter, queue);

	if (!FUNC2(adapter) && !FUNC3(adapter))
		FUNC0(adapter, false);
}