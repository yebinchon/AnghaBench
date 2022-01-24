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
struct wimax_dev {int dummy; } ;
struct i2400m_reset_ctx {int result; int /*<<< orphan*/  completion; } ;
struct i2400m {int /*<<< orphan*/  init_mutex; struct i2400m_reset_ctx* reset_ctx; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  I2400M_RT_WARM ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct wimax_dev*) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int FUNC4 (struct i2400m*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct i2400m* FUNC8 (struct wimax_dev*) ; 

__attribute__((used)) static
int FUNC9(struct wimax_dev *wimax_dev)
{
	int result;
	struct i2400m *i2400m = FUNC8(wimax_dev);
	struct device *dev = FUNC3(i2400m);
	struct i2400m_reset_ctx ctx = {
		.completion = FUNC0(ctx.completion),
		.result = 0,
	};

	FUNC2(4, dev, "(wimax_dev %p)\n", wimax_dev);
	FUNC5(&i2400m->init_mutex);
	i2400m->reset_ctx = &ctx;
	FUNC6(&i2400m->init_mutex);
	result = FUNC4(i2400m, I2400M_RT_WARM);
	if (result < 0)
		goto out;
	result = FUNC7(&ctx.completion, 4*HZ);
	if (result == 0)
		result = -ETIMEDOUT;
	else if (result > 0)
		result = ctx.result;
	/* if result < 0, pass it on */
	FUNC5(&i2400m->init_mutex);
	i2400m->reset_ctx = NULL;
	FUNC6(&i2400m->init_mutex);
out:
	FUNC1(4, dev, "(wimax_dev %p) = %d\n", wimax_dev, result);
	return result;
}