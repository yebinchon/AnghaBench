#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vpdma_dtd {int dummy; } ;
struct vpdma_desc_list {int /*<<< orphan*/  buf; } ;
struct vpdma_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  VPDMA_LIST_ATTR ; 
 int VPDMA_LIST_NUM_SHFT ; 
 int VPDMA_LIST_STOP_SHFT ; 
 int /*<<< orphan*/  VPDMA_LIST_TYPE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vpdma_desc_list*,int) ; 
 int FUNC2 (struct vpdma_desc_list*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vpdma_data*,int) ; 
 int FUNC5 (struct vpdma_data*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vpdma_data*,struct vpdma_desc_list*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vpdma_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vpdma_data*,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct vpdma_data *vpdma, int list_num,
		int *channels, int size)
{
	struct vpdma_desc_list abort_list;
	int i, ret, timeout = 500;

	FUNC8(vpdma, VPDMA_LIST_ATTR,
			(list_num << VPDMA_LIST_NUM_SHFT) |
			(1 << VPDMA_LIST_STOP_SHFT));

	if (size <= 0 || !channels)
		return 0;

	ret = FUNC2(&abort_list,
		size * sizeof(struct vpdma_dtd), VPDMA_LIST_TYPE_NORMAL);
	if (ret)
		return ret;

	for (i = 0; i < size; i++)
		FUNC1(&abort_list, channels[i]);

	ret = FUNC5(vpdma, &abort_list.buf);
	if (ret)
		goto free_desc;
	ret = FUNC6(vpdma, &abort_list, list_num);
	if (ret)
		goto unmap_desc;

	while (FUNC4(vpdma, list_num) && --timeout)
		;

	if (timeout == 0) {
		FUNC0(&vpdma->pdev->dev, "Timed out cleaning up VPDMA list\n");
		ret = -EBUSY;
	}

unmap_desc:
	FUNC7(vpdma, &abort_list.buf);
free_desc:
	FUNC3(&abort_list.buf);

	return ret;
}