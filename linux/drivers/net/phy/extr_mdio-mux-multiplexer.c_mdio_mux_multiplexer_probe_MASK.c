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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct mdio_mux_multiplexer_state {int /*<<< orphan*/  mux_handle; int /*<<< orphan*/  muxc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct mdio_mux_multiplexer_state* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mdio_mux_multiplexer_switch_fn ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct mdio_mux_multiplexer_state*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mdio_mux_multiplexer_state *s;
	int ret = 0;

	s = FUNC3(&pdev->dev, sizeof(*s), GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	s->muxc = FUNC4(dev, NULL);
	if (FUNC0(s->muxc)) {
		ret = FUNC1(s->muxc);
		if (ret != -EPROBE_DEFER)
			FUNC2(&pdev->dev, "Failed to get mux: %d\n", ret);
		return ret;
	}

	FUNC6(pdev, s);

	ret = FUNC5(&pdev->dev, pdev->dev.of_node,
			    mdio_mux_multiplexer_switch_fn, &s->mux_handle,
			    pdev, NULL);

	return ret;
}