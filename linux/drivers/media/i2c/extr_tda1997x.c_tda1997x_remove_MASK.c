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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct tda1997x_platform_data {scalar_t__ audout_format; } ;
struct tda1997x_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  page_lock; int /*<<< orphan*/  delayed_work_enable_hpd; int /*<<< orphan*/  supplies; int /*<<< orphan*/  hdl; TYPE_1__* client; int /*<<< orphan*/  audio_lock; struct tda1997x_platform_data pdata; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  TDA1997X_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct tda1997x_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tda1997x_state*,int /*<<< orphan*/ ) ; 
 struct tda1997x_state* FUNC8 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC2(client);
	struct tda1997x_state *state = FUNC8(sd);
	struct tda1997x_platform_data *pdata = &state->pdata;

	if (pdata->audout_format) {
		FUNC5(&state->audio_lock);
	}

	FUNC1(state->client->irq);
	FUNC7(state, 0);

	FUNC9(sd);
	FUNC4(&sd->entity);
	FUNC10(&state->hdl);
	FUNC6(TDA1997X_NUM_SUPPLIES, state->supplies);
	FUNC0(&state->delayed_work_enable_hpd);
	FUNC5(&state->page_lock);
	FUNC5(&state->lock);

	FUNC3(state);

	return 0;
}