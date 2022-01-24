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
struct tun_file {int /*<<< orphan*/  flags; int /*<<< orphan*/  fasync; } ;
struct file {struct tun_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_TGID ; 
 int /*<<< orphan*/  TUN_FASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (int,struct file*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int fd, struct file *file, int on)
{
	struct tun_file *tfile = file->private_data;
	int ret;

	if ((ret = FUNC1(fd, file, on, &tfile->fasync)) < 0)
		goto out;

	if (on) {
		FUNC0(file, FUNC2(current), PIDTYPE_TGID, 0);
		tfile->flags |= TUN_FASYNC;
	} else
		tfile->flags &= ~TUN_FASYNC;
	ret = 0;
out:
	return ret;
}