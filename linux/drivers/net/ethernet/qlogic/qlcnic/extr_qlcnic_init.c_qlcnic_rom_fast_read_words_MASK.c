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
 int FUNC0 (struct qlcnic_adapter*,int,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 

int
FUNC3(struct qlcnic_adapter *adapter, int addr,
				u8 *bytes, size_t size)
{
	int ret;

	ret = FUNC1(adapter);
	if (ret < 0)
		return ret;

	ret = FUNC0(adapter, addr, bytes, size);

	FUNC2(adapter);
	return ret;
}