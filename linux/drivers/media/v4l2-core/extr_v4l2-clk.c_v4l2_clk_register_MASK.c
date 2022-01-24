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
struct v4l2_clk_ops {int dummy; } ;
struct v4l2_clk {struct v4l2_clk* dev_id; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  use_count; void* priv; struct v4l2_clk_ops const* ops; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct v4l2_clk* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clk_list ; 
 int /*<<< orphan*/  clk_lock ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_clk*) ; 
 struct v4l2_clk* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 struct v4l2_clk* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

struct v4l2_clk *FUNC11(const struct v4l2_clk_ops *ops,
				   const char *dev_id,
				   void *priv)
{
	struct v4l2_clk *clk;
	int ret;

	if (!ops || !dev_id)
		return FUNC0(-EINVAL);

	clk = FUNC5(sizeof(struct v4l2_clk), GFP_KERNEL);
	if (!clk)
		return FUNC0(-ENOMEM);

	clk->dev_id = FUNC4(dev_id, GFP_KERNEL);
	if (!clk->dev_id) {
		ret = -ENOMEM;
		goto ealloc;
	}
	clk->ops = ops;
	clk->priv = priv;
	FUNC2(&clk->use_count, 0);
	FUNC7(&clk->lock);

	FUNC8(&clk_lock);
	if (!FUNC1(FUNC10(dev_id))) {
		FUNC9(&clk_lock);
		ret = -EEXIST;
		goto eexist;
	}
	FUNC6(&clk->list, &clk_list);
	FUNC9(&clk_lock);

	return clk;

eexist:
ealloc:
	FUNC3(clk->dev_id);
	FUNC3(clk);
	return FUNC0(ret);
}