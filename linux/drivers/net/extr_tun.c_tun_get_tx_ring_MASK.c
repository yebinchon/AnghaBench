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
struct ptr_ring {int dummy; } ;
struct tun_file {struct ptr_ring tx_ring; } ;
struct file {struct tun_file* private_data; int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADFD ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ptr_ring* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tun_fops ; 

struct ptr_ring *FUNC1(struct file *file)
{
	struct tun_file *tfile;

	if (file->f_op != &tun_fops)
		return FUNC0(-EINVAL);
	tfile = file->private_data;
	if (!tfile)
		return FUNC0(-EBADFD);
	return &tfile->tx_ring;
}