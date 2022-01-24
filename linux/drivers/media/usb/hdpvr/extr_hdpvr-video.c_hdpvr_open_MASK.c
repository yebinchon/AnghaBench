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
struct hdpvr_fh {int legacy_mode; int /*<<< orphan*/  fh; } ;
struct file {struct hdpvr_fh* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hdpvr_fh* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file)
{
	struct hdpvr_fh *fh = FUNC0(sizeof(*fh), GFP_KERNEL);

	if (fh == NULL)
		return -ENOMEM;
	fh->legacy_mode = true;
	FUNC2(&fh->fh, FUNC3(file));
	FUNC1(&fh->fh);
	file->private_data = fh;
	return 0;
}