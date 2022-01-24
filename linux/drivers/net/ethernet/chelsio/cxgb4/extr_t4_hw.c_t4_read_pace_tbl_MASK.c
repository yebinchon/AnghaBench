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
struct adapter {int dummy; } ;

/* Variables and functions */
 unsigned int NTX_SCHED ; 
 int /*<<< orphan*/  TP_PACE_TABLE_A ; 
 unsigned int FUNC0 (struct adapter*,unsigned int) ; 
 unsigned int FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct adapter *adap, unsigned int pace_vals[NTX_SCHED])
{
	unsigned int i, v;

	for (i = 0; i < NTX_SCHED; i++) {
		FUNC2(adap, TP_PACE_TABLE_A, 0xffff0000 + i);
		v = FUNC1(adap, TP_PACE_TABLE_A);
		pace_vals[i] = FUNC0(adap, v);
	}
}