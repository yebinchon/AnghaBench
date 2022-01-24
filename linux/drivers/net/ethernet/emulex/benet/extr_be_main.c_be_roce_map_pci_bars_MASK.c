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
struct TYPE_2__ {int size; int /*<<< orphan*/  total_size; int /*<<< orphan*/  io_addr; } ;
struct be_adapter {int /*<<< orphan*/  pdev; TYPE_1__ roce_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC4(struct be_adapter *adapter)
{
	if (FUNC3(adapter)) {
		adapter->roce_db.size = 4096;
		adapter->roce_db.io_addr = FUNC2(adapter->pdev,
							      FUNC0(adapter));
		adapter->roce_db.total_size = FUNC1(adapter->pdev,
							       FUNC0(adapter));
	}
	return 0;
}