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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qed_ooo_isle {int /*<<< orphan*/  list_entry; int /*<<< orphan*/  buffers_list; } ;
struct qed_ooo_info {int /*<<< orphan*/  free_isles_list; int /*<<< orphan*/  ready_buffers_list; int /*<<< orphan*/  cur_isles_number; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qed_ooo_isle* FUNC4 (struct qed_hwfn*,struct qed_ooo_info*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct qed_hwfn *p_hwfn,
			struct qed_ooo_info *p_ooo_info, u32 cid, u8 left_isle)
{
	struct qed_ooo_isle *p_right_isle = NULL;
	struct qed_ooo_isle *p_left_isle = NULL;

	p_right_isle = FUNC4(p_hwfn, p_ooo_info, cid,
					 left_isle + 1);
	if (!p_right_isle) {
		FUNC0(p_hwfn,
			  "Right isle %d is not found(cid %d)\n",
			  left_isle + 1, cid);
		return;
	}

	FUNC2(&p_right_isle->list_entry);
	p_ooo_info->cur_isles_number--;
	if (left_isle) {
		p_left_isle = FUNC4(p_hwfn, p_ooo_info, cid,
						left_isle);
		if (!p_left_isle) {
			FUNC0(p_hwfn,
				  "Left isle %d is not found(cid %d)\n",
				  left_isle, cid);
			return;
		}
		FUNC3(&p_right_isle->buffers_list,
				      &p_left_isle->buffers_list);
	} else {
		FUNC3(&p_right_isle->buffers_list,
				      &p_ooo_info->ready_buffers_list);
	}
	FUNC1(&p_right_isle->list_entry, &p_ooo_info->free_isles_list);
}