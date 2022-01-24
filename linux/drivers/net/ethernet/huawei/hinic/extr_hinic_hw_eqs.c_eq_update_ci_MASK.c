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
struct hinic_eq {int /*<<< orphan*/  hwif; int /*<<< orphan*/  wrapped; int /*<<< orphan*/  cons_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EQ_ARMED ; 
 int FUNC0 (struct hinic_eq*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDX ; 
 int /*<<< orphan*/  INT_ARMED ; 
 int /*<<< orphan*/  WRAPPED ; 
 int /*<<< orphan*/  XOR_CHKSUM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC6(struct hinic_eq *eq)
{
	u32 val, addr = FUNC0(eq);

	/* Read Modify Write */
	val = FUNC4(eq->hwif, addr);

	val = FUNC1(val, IDX)       &
	      FUNC1(val, WRAPPED)   &
	      FUNC1(val, INT_ARMED) &
	      FUNC1(val, XOR_CHKSUM);

	val |= FUNC2(eq->cons_idx, IDX)    |
	       FUNC2(eq->wrapped, WRAPPED) |
	       FUNC2(EQ_ARMED, INT_ARMED);

	val |= FUNC2(FUNC3(val), XOR_CHKSUM);

	FUNC5(eq->hwif, addr, val);
}