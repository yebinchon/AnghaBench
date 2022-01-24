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
struct vm_area_struct {struct gru_vma_data* vm_private_data; } ;
struct gru_vma_data {int /*<<< orphan*/  vd_lock; } ;
struct gru_thread_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct vm_area_struct*,struct gru_thread_state*) ; 
 struct gru_thread_state* FUNC1 (struct gru_vma_data*,int) ; 
 int /*<<< orphan*/  grudev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct gru_thread_state *FUNC4(struct vm_area_struct *vma,
					int tsid)
{
	struct gru_vma_data *vdata = vma->vm_private_data;
	struct gru_thread_state *gts;

	FUNC2(&vdata->vd_lock);
	gts = FUNC1(vdata, tsid);
	FUNC3(&vdata->vd_lock);
	FUNC0(grudev, "vma %p, gts %p\n", vma, gts);
	return gts;
}