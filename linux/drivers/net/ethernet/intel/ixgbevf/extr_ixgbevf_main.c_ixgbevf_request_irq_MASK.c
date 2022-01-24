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
struct ixgbevf_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct ixgbevf_adapter*) ; 

__attribute__((used)) static int FUNC2(struct ixgbevf_adapter *adapter)
{
	int err = FUNC1(adapter);

	if (err)
		FUNC0(&adapter->hw, "request_irq failed, Error %d\n", err);

	return err;
}