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
struct vm_area_struct {unsigned long vm_pgoff; } ;
struct s5p_mfc_ctx {int /*<<< orphan*/  vq_dst; int /*<<< orphan*/  vq_src; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 unsigned long DST_QUEUE_OFF_BASE ; 
 unsigned long PAGE_SHIFT ; 
 struct s5p_mfc_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct vm_area_struct *vma)
{
	struct s5p_mfc_ctx *ctx = FUNC0(file->private_data);
	unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
	int ret;

	if (offset < DST_QUEUE_OFF_BASE) {
		FUNC1(2, "mmaping source\n");
		ret = FUNC2(&ctx->vq_src, vma);
	} else {		/* capture */
		FUNC1(2, "mmaping destination\n");
		vma->vm_pgoff -= (DST_QUEUE_OFF_BASE >> PAGE_SHIFT);
		ret = FUNC2(&ctx->vq_dst, vma);
	}
	return ret;
}