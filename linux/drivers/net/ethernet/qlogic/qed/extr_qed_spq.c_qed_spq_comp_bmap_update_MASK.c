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
typedef  int u16 ;
struct qed_spq {int /*<<< orphan*/  chain; int /*<<< orphan*/  comp_bitmap_idx; int /*<<< orphan*/  p_comp_bitmap; } ;
struct qed_hwfn {struct qed_spq* p_spq; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int SPQ_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qed_hwfn *p_hwfn, __le16 echo)
{
	u16 pos = FUNC2(echo) % SPQ_RING_SIZE;
	struct qed_spq *p_spq = p_hwfn->p_spq;

	FUNC1(pos, p_spq->p_comp_bitmap);
	while (FUNC4(p_spq->comp_bitmap_idx,
			p_spq->p_comp_bitmap)) {
		FUNC0(p_spq->comp_bitmap_idx,
			    p_spq->p_comp_bitmap);
		p_spq->comp_bitmap_idx++;
		FUNC3(&p_spq->chain);
	}
}