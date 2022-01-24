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
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct tap_queue* private_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct tap_queue*,int /*<<< orphan*/ *,struct iov_iter*,int) ; 

__attribute__((used)) static ssize_t FUNC1(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct tap_queue *q = file->private_data;

	return FUNC0(q, NULL, from, file->f_flags & O_NONBLOCK);
}