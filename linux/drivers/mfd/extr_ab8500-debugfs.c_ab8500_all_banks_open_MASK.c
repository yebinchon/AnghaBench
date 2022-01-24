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
struct seq_file {int size; int /*<<< orphan*/  buf; } ;
struct inode {int /*<<< orphan*/  i_private; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  ab8500_print_all_banks ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct seq_file *s;
	int err;

	err = FUNC1(file, ab8500_print_all_banks, inode->i_private);
	if (!err) {
		/* Default buf size in seq_read is not enough */
		s = (struct seq_file *)file->private_data;
		s->size = (PAGE_SIZE * 2);
		s->buf = FUNC0(s->size, GFP_KERNEL);
		if (!s->buf) {
			FUNC2(inode, file);
			err = -ENOMEM;
		}
	}
	return err;
}