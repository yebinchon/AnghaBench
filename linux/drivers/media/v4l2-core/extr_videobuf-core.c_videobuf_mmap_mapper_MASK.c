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
struct vm_area_struct {int vm_flags; int vm_pgoff; } ;
struct videobuf_queue {struct videobuf_buffer** bufs; TYPE_1__* int_ops; } ;
struct videobuf_buffer {scalar_t__ memory; int boff; } ;
struct TYPE_2__ {int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int FUNC0 (struct videobuf_queue*,int /*<<< orphan*/ ,struct videobuf_queue*,struct videobuf_buffer*,struct vm_area_struct*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_QTYPE_OPS ; 
 int PAGE_SHIFT ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int VIDEO_MAX_FRAME ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  mmap_mapper ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_queue*) ; 

int FUNC5(struct videobuf_queue *q, struct vm_area_struct *vma)
{
	int rc = -EINVAL;
	int i;

	FUNC1(q->int_ops->magic, MAGIC_QTYPE_OPS);

	if (!(vma->vm_flags & VM_WRITE) || !(vma->vm_flags & VM_SHARED)) {
		FUNC2(1, "mmap appl bug: PROT_WRITE and MAP_SHARED are required\n");
		return -EINVAL;
	}

	FUNC3(q);
	for (i = 0; i < VIDEO_MAX_FRAME; i++) {
		struct videobuf_buffer *buf = q->bufs[i];

		if (buf && buf->memory == V4L2_MEMORY_MMAP &&
				buf->boff == (vma->vm_pgoff << PAGE_SHIFT)) {
			rc = FUNC0(q, mmap_mapper, q, buf, vma);
			break;
		}
	}
	FUNC4(q);

	return rc;
}