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
struct v4l2_subdev {int dummy; } ;
struct ov9640_priv {int /*<<< orphan*/  gpio_power; int /*<<< orphan*/  clk; int /*<<< orphan*/  gpio_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct ov9640_priv* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, int on)
{
	struct ov9640_priv *priv = FUNC1(sd);
	int ret = 0;

	if (on) {
		FUNC0(priv->gpio_power, 1);
		FUNC2(1000, 2000);
		ret = FUNC4(priv->clk);
		FUNC2(1000, 2000);
		FUNC0(priv->gpio_reset, 0);
	} else {
		FUNC0(priv->gpio_reset, 1);
		FUNC2(1000, 2000);
		FUNC3(priv->clk);
		FUNC2(1000, 2000);
		FUNC0(priv->gpio_power, 0);
	}

	return ret;
}