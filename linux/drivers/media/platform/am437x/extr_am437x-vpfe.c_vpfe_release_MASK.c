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
struct vpfe_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  pdev; int /*<<< orphan*/  ccdc; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct file*) ; 
 struct vpfe_device* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct vpfe_device *vpfe = FUNC4(file);
	bool fh_singular;
	int ret;

	FUNC1(&vpfe->lock);

	/* Save the singular status before we call the clean-up helper */
	fh_singular = FUNC3(file);

	/* the release helper will cleanup any on-going streaming */
	ret = FUNC0(file, NULL);

	/*
	 * If this was the last open file.
	 * Then de-initialize hw module.
	 */
	if (fh_singular)
		FUNC5(&vpfe->ccdc, vpfe->pdev);

	FUNC2(&vpfe->lock);

	return ret;
}