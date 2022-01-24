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
struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int /*<<< orphan*/  dev; } ;
struct i915_hdcp_comp_master {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct component_match*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct component_match**,int /*<<< orphan*/ ,struct i915_hdcp_comp_master*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_hdcp_comp_master*) ; 
 struct i915_hdcp_comp_master* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_cl_device*) ; 
 int FUNC7 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_cl_device*,struct i915_hdcp_comp_master*) ; 
 int /*<<< orphan*/  mei_component_master_ops ; 
 int /*<<< orphan*/  mei_hdcp_component_match ; 

__attribute__((used)) static int FUNC9(struct mei_cl_device *cldev,
			  const struct mei_cl_device_id *id)
{
	struct i915_hdcp_comp_master *comp_master;
	struct component_match *master_match;
	int ret;

	ret = FUNC7(cldev);
	if (ret < 0) {
		FUNC3(&cldev->dev, "mei_cldev_enable Failed. %d\n", ret);
		goto enable_err_exit;
	}

	comp_master = FUNC5(sizeof(*comp_master), GFP_KERNEL);
	if (!comp_master) {
		ret = -ENOMEM;
		goto err_exit;
	}

	master_match = NULL;
	FUNC2(&cldev->dev, &master_match,
				  mei_hdcp_component_match, comp_master);
	if (FUNC0(master_match)) {
		ret = -ENOMEM;
		goto err_exit;
	}

	FUNC8(cldev, comp_master);
	ret = FUNC1(&cldev->dev,
					      &mei_component_master_ops,
					      master_match);
	if (ret < 0) {
		FUNC3(&cldev->dev, "Master comp add failed %d\n", ret);
		goto err_exit;
	}

	return 0;

err_exit:
	FUNC8(cldev, NULL);
	FUNC4(comp_master);
	FUNC6(cldev);
enable_err_exit:
	return ret;
}