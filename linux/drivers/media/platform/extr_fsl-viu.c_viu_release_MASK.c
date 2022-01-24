#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct viu_fh {int /*<<< orphan*/  fh; int /*<<< orphan*/  vb_vidq; struct viu_dev* dev; } ;
struct viu_dev {int /*<<< orphan*/  users; int /*<<< orphan*/  lock; } ;
struct file {struct viu_fh* private_data; } ;
struct TYPE_2__ {int minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct viu_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct viu_dev*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct viu_fh *fh = file->private_data;
	struct viu_dev *dev = fh->dev;
	int minor = FUNC6(file)->minor;

	FUNC2(&dev->lock);
	FUNC9(dev);
	FUNC8(&fh->vb_vidq);
	FUNC7(&fh->vb_vidq);
	FUNC4(&fh->fh);
	FUNC5(&fh->fh);
	FUNC3(&dev->lock);

	FUNC1(fh);

	dev->users--;
	FUNC0(1, "close (minor=%d, users=%d)\n",
		minor, dev->users);
	return 0;
}