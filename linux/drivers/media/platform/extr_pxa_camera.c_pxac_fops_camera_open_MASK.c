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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pxa_camera_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 struct pxa_camera_dev* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *filp)
{
	struct pxa_camera_dev *pcdev = FUNC6(filp);
	int ret;

	FUNC0(&pcdev->mlock);
	ret = FUNC4(filp);
	if (ret < 0)
		goto out;

	if (!FUNC3(filp))
		goto out;

	ret = FUNC2(pcdev, 1);
	if (ret)
		FUNC5(filp);
out:
	FUNC1(&pcdev->mlock);
	return ret;
}