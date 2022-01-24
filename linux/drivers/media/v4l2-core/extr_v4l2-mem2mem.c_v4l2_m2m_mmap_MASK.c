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
struct vb2_queue {int dummy; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned long DST_QUEUE_OFF_BASE ; 
 unsigned long PAGE_SHIFT ; 
 struct vb2_queue* FUNC0 (struct v4l2_m2m_ctx*) ; 
 struct vb2_queue* FUNC1 (struct v4l2_m2m_ctx*) ; 
 int FUNC2 (struct vb2_queue*,struct vm_area_struct*) ; 

int FUNC3(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
			 struct vm_area_struct *vma)
{
	unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
	struct vb2_queue *vq;

	if (offset < DST_QUEUE_OFF_BASE) {
		vq = FUNC1(m2m_ctx);
	} else {
		vq = FUNC0(m2m_ctx);
		vma->vm_pgoff -= (DST_QUEUE_OFF_BASE >> PAGE_SHIFT);
	}

	return FUNC2(vq, vma);
}