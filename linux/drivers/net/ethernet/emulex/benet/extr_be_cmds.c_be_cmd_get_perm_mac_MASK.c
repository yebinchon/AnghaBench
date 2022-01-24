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
typedef  int /*<<< orphan*/  u8 ;
struct be_adapter {int /*<<< orphan*/  if_handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct be_adapter *adapter, u8 *mac)
{
	int status;
	bool pmac_valid = false;

	FUNC4(mac);

	if (FUNC0(adapter)) {
		if (FUNC3(adapter))
			status = FUNC2(adapter, mac, true, 0,
						       0);
		else
			status = FUNC2(adapter, mac, false,
						       adapter->if_handle, 0);
	} else {
		status = FUNC1(adapter, mac, &pmac_valid,
						  NULL, adapter->if_handle, 0);
	}

	return status;
}