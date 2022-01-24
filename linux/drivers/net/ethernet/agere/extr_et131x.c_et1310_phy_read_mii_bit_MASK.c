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
typedef  int u8 ;
typedef  int u16 ;
struct et131x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*,int,int*) ; 

__attribute__((used)) static void FUNC1(struct et131x_adapter *adapter,
				    u16 regnum,
				    u16 bitnum,
				    u8 *value)
{
	u16 reg;
	u16 mask = 1 << bitnum;

	FUNC0(adapter, regnum, &reg);

	*value = (reg & mask) >> bitnum;
}