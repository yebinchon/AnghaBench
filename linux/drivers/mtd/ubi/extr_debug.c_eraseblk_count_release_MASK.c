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
struct ubi_device {int dummy; } ;
struct seq_file {struct ubi_device* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_device*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *f)
{
	struct seq_file *s = f->private_data;
	struct ubi_device *ubi = s->private;

	FUNC1(ubi);

	return FUNC0(inode, f);
}