#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  dev; } ;
struct s5k5baf {TYPE_1__ cis_sd; TYPE_2__ sd; int /*<<< orphan*/  clock; void* crop_source; void* compose; void* crop_sink; int /*<<< orphan*/  lock; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S5K5BAF_CLK_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s5k5baf* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct s5k5baf*) ; 
 void* s5k5baf_cis_rect ; 
 int FUNC6 (struct s5k5baf*) ; 
 int FUNC7 (struct s5k5baf*) ; 
 int FUNC8 (struct s5k5baf*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC9 (struct s5k5baf*) ; 
 int FUNC10 (struct s5k5baf*) ; 
 int FUNC11 (struct s5k5baf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct s5k5baf*) ; 
 int FUNC13 (struct s5k5baf*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *c)
{
	struct s5k5baf *state;
	int ret;

	state = FUNC2(&c->dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	FUNC4(&state->lock);
	state->crop_sink = s5k5baf_cis_rect;
	state->compose = s5k5baf_cis_rect;
	state->crop_source = s5k5baf_cis_rect;

	ret = FUNC11(state, &c->dev);
	if (ret < 0)
		return ret;

	ret = FUNC8(state, c);
	if (ret < 0)
		return ret;

	ret = FUNC6(state);
	if (ret < 0)
		goto err_me;

	ret = FUNC7(state);
	if (ret < 0)
		goto err_me;

	state->clock = FUNC1(state->sd.dev, S5K5BAF_CLK_NAME);
	if (FUNC0(state->clock)) {
		ret = -EPROBE_DEFER;
		goto err_me;
	}

	ret = FUNC13(state);
	if (ret < 0) {
		ret = -EPROBE_DEFER;
		goto err_me;
	}
	FUNC9(state);
	ret = FUNC5(state);

	FUNC12(state);
	if (ret < 0)
		goto err_me;

	ret = FUNC10(state);
	if (ret < 0)
		goto err_me;

	ret = FUNC14(&state->sd);
	if (ret < 0)
		goto err_ctrl;

	return 0;

err_ctrl:
	FUNC15(state->sd.ctrl_handler);
err_me:
	FUNC3(&state->sd.entity);
	FUNC3(&state->cis_sd.entity);
	return ret;
}