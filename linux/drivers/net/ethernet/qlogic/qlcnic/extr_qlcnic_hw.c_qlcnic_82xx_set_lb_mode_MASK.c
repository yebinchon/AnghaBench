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
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VPORT_MISS_MODE_ACCEPT_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 

int FUNC3(struct qlcnic_adapter *adapter, u8 mode)
{
	if (FUNC2(adapter, mode))
		return -EIO;

	if (FUNC1(adapter,
				   VPORT_MISS_MODE_ACCEPT_ALL)) {
		FUNC2(adapter, 0);
		return -EIO;
	}

	FUNC0(1000);
	return 0;
}