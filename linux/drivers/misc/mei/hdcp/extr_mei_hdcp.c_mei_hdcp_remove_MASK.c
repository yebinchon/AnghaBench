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
struct mei_cl_device {int /*<<< orphan*/  dev; } ;
struct i915_hdcp_comp_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_hdcp_comp_master*) ; 
 int FUNC2 (struct mei_cl_device*) ; 
 struct i915_hdcp_comp_master* FUNC3 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_cl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mei_component_master_ops ; 

__attribute__((used)) static int FUNC5(struct mei_cl_device *cldev)
{
	struct i915_hdcp_comp_master *comp_master =
						FUNC3(cldev);

	FUNC0(&cldev->dev, &mei_component_master_ops);
	FUNC1(comp_master);
	FUNC4(cldev, NULL);

	return FUNC2(cldev);
}