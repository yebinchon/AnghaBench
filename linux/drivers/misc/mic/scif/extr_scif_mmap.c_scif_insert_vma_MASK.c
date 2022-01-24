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
struct vm_area_struct {int dummy; } ;
struct scif_vma_info {int /*<<< orphan*/  list; struct vm_area_struct* vma; } ;
struct TYPE_2__ {int /*<<< orphan*/  vma_list; } ;
struct scif_endpt {int /*<<< orphan*/  lock; TYPE_1__ rma_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct scif_vma_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct scif_endpt *ep, struct vm_area_struct *vma)
{
	struct scif_vma_info *info;
	int err = 0;

	info = FUNC0(sizeof(*info), GFP_KERNEL);
	if (!info) {
		err = -ENOMEM;
		goto done;
	}
	info->vma = vma;
	FUNC2(&ep->lock);
	FUNC1(&info->list, &ep->rma_info.vma_list);
	FUNC3(&ep->lock);
done:
	return err;
}