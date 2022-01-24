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
struct v4l2_clk {int /*<<< orphan*/  use_count; struct v4l2_clk* clk; } ;
struct device {scalar_t__ of_node; } ;
struct clk {int /*<<< orphan*/  use_count; struct clk* clk; } ;
typedef  int /*<<< orphan*/  clk_name ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct v4l2_clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_clk*) ; 
 int V4L2_CLK_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct v4l2_clk* FUNC5 (struct device*,char const*) ; 
 int /*<<< orphan*/  clk_lock ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_clk*) ; 
 char* FUNC7 (struct device*) ; 
 struct v4l2_clk* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct v4l2_clk* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,scalar_t__) ; 

struct v4l2_clk *FUNC13(struct device *dev, const char *id)
{
	struct v4l2_clk *clk;
	struct clk *ccf_clk = FUNC5(dev, id);
	char clk_name[V4L2_CLK_NAME_SIZE];

	if (FUNC3(ccf_clk) == -EPROBE_DEFER)
		return FUNC0(-EPROBE_DEFER);

	if (!FUNC2(ccf_clk)) {
		clk = FUNC8(sizeof(*clk), GFP_KERNEL);
		if (!clk) {
			FUNC6(ccf_clk);
			return FUNC0(-ENOMEM);
		}
		clk->clk = ccf_clk;

		return clk;
	}

	FUNC9(&clk_lock);
	clk = FUNC11(FUNC7(dev));

	/* if dev_name is not found, try use the OF name to find again  */
	if (FUNC3(clk) == -ENODEV && dev->of_node) {
		FUNC12(clk_name, sizeof(clk_name), dev->of_node);
		clk = FUNC11(clk_name);
	}

	if (!FUNC1(clk))
		FUNC4(&clk->use_count);
	FUNC10(&clk_lock);

	return clk;
}