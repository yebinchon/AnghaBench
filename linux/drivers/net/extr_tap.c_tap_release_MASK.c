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
struct tap_queue {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct tap_queue* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tap_queue*) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *file)
{
	struct tap_queue *q = file->private_data;
	FUNC0(q);
	return 0;
}