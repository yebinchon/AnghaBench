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
typedef  int u64 ;
struct ixgbe_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int FUNC2 (struct ixgbe_adapter*) ; 
 int FUNC3 (struct ixgbe_adapter*) ; 
 int FUNC4 (struct ixgbe_adapter*) ; 

__attribute__((used)) static int FUNC5(struct ixgbe_adapter *adapter, u64 *data)
{
	*data = FUNC3(adapter);
	if (*data)
		goto out;
	*data = FUNC4(adapter);
	if (*data)
		goto err_loopback;
	*data = FUNC2(adapter);
	FUNC1(adapter);

err_loopback:
	FUNC0(adapter);
out:
	return *data;
}