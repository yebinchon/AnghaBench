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
struct s5k4ecgx {scalar_t__ set_params; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_G_ENABLE_PREV ; 
 int /*<<< orphan*/  REG_G_ENABLE_PREV_CHG ; 
 int FUNC0 (struct s5k4ecgx*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct s5k4ecgx *priv, int on)
{
	struct i2c_client *client = FUNC2(&priv->sd);
	int ret;

	if (on && priv->set_params) {
		ret = FUNC0(priv);
		if (ret < 0)
			return ret;
		priv->set_params = 0;
	}
	/*
	 * This enables/disables preview stream only. Capture requests
	 * are not supported yet.
	 */
	ret = FUNC1(client, REG_G_ENABLE_PREV, on);
	if (ret < 0)
		return ret;
	return FUNC1(client, REG_G_ENABLE_PREV_CHG, 1);
}