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
typedef  int /*<<< orphan*/  u64 ;
struct seq_file {struct genwqe_dev* private; } ;
struct genwqe_dev {unsigned int num_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_SLC_VF_QUEUE_WTIME ; 
 int /*<<< orphan*/  FUNC0 (struct genwqe_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,unsigned int,...) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *unused)
{
	struct genwqe_dev *cd = s->private;
	unsigned int vf_num;
	u64 t;

	t = FUNC0(cd, IO_SLC_VF_QUEUE_WTIME, 0);
	FUNC1(s, "  PF   0x%016llx\n", t);

	for (vf_num = 0; vf_num < cd->num_vfs; vf_num++) {
		t = FUNC0(cd, IO_SLC_VF_QUEUE_WTIME, vf_num + 1);
		FUNC1(s, "  VF%-2d 0x%016llx\n", vf_num, t);
	}
	return 0;
}