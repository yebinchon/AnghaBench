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
typedef  int /*<<< orphan*/  u32 ;
struct hinic_eq {int q_len; } ;
struct hinic_aeq_elem {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 struct hinic_aeq_elem* FUNC0 (struct hinic_eq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct hinic_eq *eq, u32 init_val)
{
	struct hinic_aeq_elem *aeqe;
	int i;

	for (i = 0; i < eq->q_len; i++) {
		aeqe = FUNC0(eq, i);
		aeqe->desc = FUNC1(init_val);
	}

	FUNC2();  /* Write the initilzation values */
}