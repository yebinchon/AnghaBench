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
struct vpfe_device {int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct vpfe_device* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct vpfe_device*,char*) ; 
 scalar_t__ FUNC7 (struct vpfe_device*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct vpfe_device *vpfe = FUNC5(file);
	int ret;

	FUNC0(&vpfe->lock);

	ret = FUNC3(file);
	if (ret) {
		FUNC6(vpfe, "v4l2_fh_open failed\n");
		goto unlock;
	}

	if (!FUNC2(file))
		goto unlock;

	if (FUNC7(vpfe)) {
		FUNC4(file);
		ret = -ENODEV;
	}

unlock:
	FUNC1(&vpfe->lock);
	return ret;
}