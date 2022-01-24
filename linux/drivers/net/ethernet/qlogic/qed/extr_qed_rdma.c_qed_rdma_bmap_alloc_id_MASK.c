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
typedef  scalar_t__ u32 ;
struct qed_hwfn {int dummy; } ;
struct qed_bmap {scalar_t__ max_count; int /*<<< orphan*/  name; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(struct qed_hwfn *p_hwfn,
			   struct qed_bmap *bmap, u32 *id_num)
{
	*id_num = FUNC2(bmap->bitmap, bmap->max_count);
	if (*id_num >= bmap->max_count)
		return -EINVAL;

	FUNC1(*id_num, bmap->bitmap);

	FUNC0(p_hwfn, QED_MSG_RDMA, "%s bitmap: allocated id %d\n",
		   bmap->name, *id_num);

	return 0;
}