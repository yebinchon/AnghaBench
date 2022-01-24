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
struct hinic_eq {int q_len; int wrapped; int cons_idx; } ;
struct hinic_ceqs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct hinic_eq*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRAPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_ceqs*,int /*<<< orphan*/ ) ; 
 struct hinic_ceqs* FUNC4 (struct hinic_eq*) ; 

__attribute__((used)) static void FUNC5(struct hinic_eq *eq)
{
	struct hinic_ceqs *ceqs = FUNC4(eq);
	u32 ceqe;
	int i;

	for (i = 0; i < eq->q_len; i++) {
		ceqe = *(FUNC0(eq));

		/* Data in HW is in Big endian Format */
		ceqe = FUNC2(ceqe);

		/* HW toggles the wrapped bit, when it adds eq element event */
		if (FUNC1(ceqe, WRAPPED) == eq->wrapped)
			break;

		FUNC3(ceqs, ceqe);

		eq->cons_idx++;

		if (eq->cons_idx == eq->q_len) {
			eq->cons_idx = 0;
			eq->wrapped = !eq->wrapped;
		}
	}
}