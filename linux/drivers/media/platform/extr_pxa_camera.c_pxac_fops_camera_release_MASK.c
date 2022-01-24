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
struct pxa_camera_dev {int /*<<< orphan*/  mlock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pxa_camera_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct file*) ; 
 struct pxa_camera_dev* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *filp)
{
	struct pxa_camera_dev *pcdev = FUNC5(filp);
	int ret;
	bool fh_singular;

	FUNC1(&pcdev->mlock);

	fh_singular = FUNC4(filp);

	ret = FUNC0(filp, NULL);

	if (fh_singular)
		ret = FUNC3(pcdev, 0);

	FUNC2(&pcdev->mlock);

	return ret;
}