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
struct msp_state {int v4l2_std; scalar_t__ radio; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int V4L2_STD_MN ; 
 int V4L2_STD_NTSC_M_JP ; 
 int V4L2_STD_NTSC_M_KR ; 
 int V4L2_STD_SECAM_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  msp_debug ; 
 struct msp_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct msp_state *state = FUNC2(FUNC1(client));

	if (state->radio) {
		FUNC0(&client->dev, 1, msp_debug, "selected radio modus\n");
		return 0x0001;
	}
	if (state->v4l2_std == V4L2_STD_NTSC_M_JP) {
		FUNC0(&client->dev, 1, msp_debug, "selected M (EIA-J) modus\n");
		return 0x4001;
	}
	if (state->v4l2_std == V4L2_STD_NTSC_M_KR) {
		FUNC0(&client->dev, 1, msp_debug, "selected M (A2) modus\n");
		return 0x0001;
	}
	if (state->v4l2_std == V4L2_STD_SECAM_L) {
		FUNC0(&client->dev, 1, msp_debug, "selected SECAM-L modus\n");
		return 0x6001;
	}
	if (state->v4l2_std & V4L2_STD_MN) {
		FUNC0(&client->dev, 1, msp_debug, "selected M (BTSC) modus\n");
		return 0x2001;
	}
	return 0x7001;
}