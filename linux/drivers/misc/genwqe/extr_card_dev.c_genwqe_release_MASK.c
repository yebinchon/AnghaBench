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
struct inode {int dummy; } ;
struct genwqe_file {struct genwqe_dev* cd; } ;
struct genwqe_dev {int dummy; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct genwqe_dev*,struct genwqe_file*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct genwqe_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct genwqe_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct genwqe_file*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct genwqe_file *cfile = (struct genwqe_file *)filp->private_data;
	struct genwqe_dev *cd = cfile->cd;

	/* there must be no entries in these lists! */
	FUNC2(cfile);
	FUNC3(cfile);

	/* remove this filp from the asynchronously notified filp's */
	FUNC1(-1, filp, 0);

	/*
	 * For this to work we must not release cd when this cfile is
	 * not yet released, otherwise the list entry is invalid,
	 * because the list itself gets reinstantiated!
	 */
	FUNC0(cd, cfile);
	FUNC4(cfile);
	return 0;
}