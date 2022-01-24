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
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int NMTUS ; 
 int /*<<< orphan*/  TP_MTU_TABLE_A ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct adapter *adap, u16 *mtus, u8 *mtu_log)
{
	u32 v;
	int i;

	for (i = 0; i < NMTUS; ++i) {
		FUNC5(adap, TP_MTU_TABLE_A,
			     FUNC0(0xff) | FUNC2(i));
		v = FUNC4(adap, TP_MTU_TABLE_A);
		mtus[i] = FUNC1(v);
		if (mtu_log)
			mtu_log[i] = FUNC3(v);
	}
}