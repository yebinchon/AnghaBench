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
struct intel_lpss {struct dentry* debugfs; int /*<<< orphan*/  idle_ltr; int /*<<< orphan*/  active_ltr; int /*<<< orphan*/  caps; int /*<<< orphan*/  dev; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_lpss*) ; 
 int /*<<< orphan*/  intel_lpss_debugfs ; 

__attribute__((used)) static int FUNC6(struct intel_lpss *lpss)
{
	struct dentry *dir;

	dir = FUNC2(FUNC4(lpss->dev), intel_lpss_debugfs);
	if (FUNC0(dir))
		return FUNC1(dir);

	/* Cache the values into lpss structure */
	FUNC5(lpss);

	FUNC3("capabilities", S_IRUGO, dir, &lpss->caps);
	FUNC3("active_ltr", S_IRUGO, dir, &lpss->active_ltr);
	FUNC3("idle_ltr", S_IRUGO, dir, &lpss->idle_ltr);

	lpss->debugfs = dir;
	return 0;
}