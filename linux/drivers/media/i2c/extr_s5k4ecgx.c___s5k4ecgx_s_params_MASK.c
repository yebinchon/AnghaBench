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
struct v4l2_rect {int dummy; } ;
struct s5k4ecgx {TYPE_1__* curr_frmsize; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct v4l2_rect input_window; } ;

/* Variables and functions */
 int FR_TIME_DYNAMIC ; 
 int FR_TIME_Q_BEST_FRRATE ; 
 int REG_G_ACTIVE_PREV_CFG ; 
 int REG_G_INPUTS_CHANGE_REQ ; 
 int REG_G_NEW_CFG_SYNC ; 
 int REG_G_PREV_CFG_CHG ; 
 int REG_G_PREV_OPEN_AFTER_CH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (struct i2c_client*,struct v4l2_rect const*) ; 
 int FUNC9 (struct s5k4ecgx*) ; 
 int FUNC10 (struct i2c_client*,struct v4l2_rect const*) ; 
 int FUNC11 (struct i2c_client*,int,int) ; 
 struct i2c_client* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct s5k4ecgx *priv)
{
	struct i2c_client *client = FUNC12(&priv->sd);
	const struct v4l2_rect *crop_rect = &priv->curr_frmsize->input_window;
	int ret;

	ret = FUNC8(client, crop_rect);
	if (!ret)
		ret = FUNC10(client, crop_rect);
	if (!ret)
		ret = FUNC11(client, REG_G_INPUTS_CHANGE_REQ, 1);
	if (!ret)
		ret = FUNC11(client, 0x70000a1e, 0x28);
	if (!ret)
		ret = FUNC11(client, 0x70000ad4, 0x3c);
	if (!ret)
		ret = FUNC9(priv);
	if (!ret)
		ret = FUNC11(client, FUNC6(0), 0x52);
	if (!ret)
		ret = FUNC11(client, FUNC2(0),
				     FR_TIME_DYNAMIC);
	if (!ret)
		ret = FUNC11(client, FUNC1(0),
				     FR_TIME_Q_BEST_FRRATE);
	if (!ret)
		ret = FUNC11(client,  FUNC4(0),
				     FUNC7(33300));
	if (!ret)
		ret = FUNC11(client, FUNC3(0),
				     FUNC7(66600));
	if (!ret)
		ret = FUNC11(client, FUNC5(0), 0);
	if (!ret)
		ret = FUNC11(client, FUNC0(0), 0);
	if (!ret)
		ret = FUNC11(client, REG_G_ACTIVE_PREV_CFG, 0);
	if (!ret)
		ret = FUNC11(client, REG_G_PREV_OPEN_AFTER_CH, 1);
	if (!ret)
		ret = FUNC11(client, REG_G_NEW_CFG_SYNC, 1);
	if (!ret)
		ret = FUNC11(client, REG_G_PREV_CFG_CHG, 1);

	return ret;
}