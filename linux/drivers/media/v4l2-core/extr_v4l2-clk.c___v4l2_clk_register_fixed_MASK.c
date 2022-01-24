#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct module* owner; int /*<<< orphan*/  get_rate; } ;
struct v4l2_clk_fixed {unsigned long rate; TYPE_1__ ops; } ;
struct v4l2_clk {int dummy; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct v4l2_clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct v4l2_clk*) ; 
 int /*<<< orphan*/  fixed_get_rate ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_clk_fixed*) ; 
 struct v4l2_clk_fixed* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct v4l2_clk* FUNC4 (TYPE_1__*,char const*,struct v4l2_clk_fixed*) ; 

struct v4l2_clk *FUNC5(const char *dev_id,
				unsigned long rate, struct module *owner)
{
	struct v4l2_clk *clk;
	struct v4l2_clk_fixed *priv = FUNC3(sizeof(*priv), GFP_KERNEL);

	if (!priv)
		return FUNC0(-ENOMEM);

	priv->rate = rate;
	priv->ops.get_rate = fixed_get_rate;
	priv->ops.owner = owner;

	clk = FUNC4(&priv->ops, dev_id, priv);
	if (FUNC1(clk))
		FUNC2(priv);

	return clk;
}