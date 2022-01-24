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
typedef  union event_ring_element {int dummy; } event_ring_element ;
typedef  int /*<<< orphan*/  u16 ;
struct qed_hwfn {struct qed_eq* p_eq; int /*<<< orphan*/  cdev; } ;
struct qed_eq {int /*<<< orphan*/  p_fw_cons; int /*<<< orphan*/  eq_sb_index; int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QED_CHAIN_CNT_TYPE_U16 ; 
 int /*<<< orphan*/  QED_CHAIN_MODE_PBL ; 
 int /*<<< orphan*/  QED_CHAIN_USE_TO_PRODUCE ; 
 int /*<<< orphan*/  FUNC0 (struct qed_eq*) ; 
 struct qed_eq* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qed_eq_completion ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,struct qed_eq*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct qed_hwfn *p_hwfn, u16 num_elem)
{
	struct qed_eq *p_eq;

	/* Allocate EQ struct */
	p_eq = FUNC1(sizeof(*p_eq), GFP_KERNEL);
	if (!p_eq)
		return -ENOMEM;

	/* Allocate and initialize EQ chain*/
	if (FUNC2(p_hwfn->cdev,
			    QED_CHAIN_USE_TO_PRODUCE,
			    QED_CHAIN_MODE_PBL,
			    QED_CHAIN_CNT_TYPE_U16,
			    num_elem,
			    sizeof(union event_ring_element),
			    &p_eq->chain, NULL))
		goto eq_allocate_fail;

	/* register EQ completion on the SP SB */
	FUNC3(p_hwfn, qed_eq_completion,
			    p_eq, &p_eq->eq_sb_index, &p_eq->p_fw_cons);

	p_hwfn->p_eq = p_eq;
	return 0;

eq_allocate_fail:
	FUNC0(p_eq);
	return -ENOMEM;
}