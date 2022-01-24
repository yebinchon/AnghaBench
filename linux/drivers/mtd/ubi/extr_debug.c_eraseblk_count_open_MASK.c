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
struct inode {scalar_t__ i_private; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  eraseblk_count_seq_ops ; 
 int FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *f)
{
	struct seq_file *s;
	int err;

	err = FUNC0(f, &eraseblk_count_seq_ops);
	if (err)
		return err;

	s = f->private_data;
	s->private = FUNC1((unsigned long)inode->i_private);

	if (!s->private)
		return -ENODEV;
	else
		return 0;
}