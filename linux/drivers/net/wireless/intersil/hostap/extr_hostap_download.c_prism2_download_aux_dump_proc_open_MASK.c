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
struct seq_file {int /*<<< orphan*/  private; } ;
struct prism2_download_aux_dump {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  prism2_download_aux_dump_proc_seqops ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	int ret = FUNC1(file, &prism2_download_aux_dump_proc_seqops,
				   sizeof(struct prism2_download_aux_dump));
	if (ret == 0) {
		struct seq_file *m = file->private_data;
		m->private = FUNC0(inode);
	}
	return ret;
}