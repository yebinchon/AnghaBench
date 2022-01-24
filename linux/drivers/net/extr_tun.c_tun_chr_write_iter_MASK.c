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
struct tun_struct {int dummy; } ;
struct tun_file {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct tun_file* private_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBADFD ; 
 int O_NONBLOCK ; 
 struct tun_struct* FUNC0 (struct tun_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct tun_struct*,struct tun_file*,int /*<<< orphan*/ *,struct iov_iter*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tun_struct*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct tun_file *tfile = file->private_data;
	struct tun_struct *tun = FUNC0(tfile);
	ssize_t result;

	if (!tun)
		return -EBADFD;

	result = FUNC1(tun, tfile, NULL, from,
			      file->f_flags & O_NONBLOCK, false);

	FUNC2(tun);
	return result;
}