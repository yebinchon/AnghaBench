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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct netxen_adapter {int /*<<< orphan*/  physical_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct netxen_adapter *adapter,
		int index, u8 *addr)
{
	u32 hi = 0, lo = 0;
	u16 port = adapter->physical_port;

	lo = FUNC1(addr);
	hi = FUNC0(addr);

	FUNC3(adapter, FUNC2(port, index), hi);
	FUNC3(adapter, FUNC2(port, index)+4, lo);

	return 0;
}