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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CIM_QUEUE_CONFIG_CTRL_A ; 
 int /*<<< orphan*/  CIM_QUEUE_CONFIG_REF_A ; 
 int OBQSELECT_F ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

u32 FUNC4(struct adapter *padap, int qid)
{
	u32 value;

	FUNC3(padap, CIM_QUEUE_CONFIG_REF_A, OBQSELECT_F |
		     FUNC1(qid));
	value = FUNC2(padap, CIM_QUEUE_CONFIG_CTRL_A);
	value = FUNC0(value) * 64; /* size in number of words */
	return value * sizeof(u32);
}