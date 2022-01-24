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
struct ionic_queue {unsigned int index; unsigned int num_descs; size_t desc_size; size_t sg_desc_size; unsigned int pid; struct ionic_desc_info* info; int /*<<< orphan*/  name; struct ionic_desc_info* tail; struct ionic_desc_info* head; struct ionic_dev* idev; struct ionic_lif* lif; } ;
struct ionic_lif {int index; } ;
struct ionic_dev {int dummy; } ;
struct ionic_desc_info {unsigned int index; unsigned int left; struct ionic_desc_info* next; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int,char const*,unsigned int) ; 

int FUNC3(struct ionic_lif *lif, struct ionic_dev *idev,
		 struct ionic_queue *q, unsigned int index, const char *name,
		 unsigned int num_descs, size_t desc_size,
		 size_t sg_desc_size, unsigned int pid)
{
	struct ionic_desc_info *cur;
	unsigned int ring_size;
	unsigned int i;

	if (desc_size == 0 || !FUNC1(num_descs))
		return -EINVAL;

	ring_size = FUNC0(num_descs);
	if (ring_size < 2 || ring_size > 16)
		return -EINVAL;

	q->lif = lif;
	q->idev = idev;
	q->index = index;
	q->num_descs = num_descs;
	q->desc_size = desc_size;
	q->sg_desc_size = sg_desc_size;
	q->tail = q->info;
	q->head = q->tail;
	q->pid = pid;

	FUNC2(q->name, sizeof(q->name), "L%d-%s%u", lif->index, name, index);

	cur = q->info;

	for (i = 0; i < num_descs; i++) {
		if (i + 1 == num_descs)
			cur->next = q->info;
		else
			cur->next = cur + 1;
		cur->index = i;
		cur->left = num_descs - i;
		cur++;
	}

	return 0;
}