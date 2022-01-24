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
struct msp_state {int main; int second; scalar_t__ mode; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MSP_MODE_AM_NICAM ; 
 scalar_t__ MSP_MODE_FM_NICAM1 ; 
 scalar_t__ MSP_MODE_FM_NICAM2 ; 
 scalar_t__ MSP_MODE_FM_TERRA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  msp_debug ; 
 struct msp_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	struct msp_state *state = FUNC2(FUNC1(client));

	if (state->main == state->second)
		FUNC0(&client->dev, 1, msp_debug,
			"mono sound carrier: %d.%03d MHz\n",
			state->main / 910000, (state->main / 910) % 1000);
	else
		FUNC0(&client->dev, 1, msp_debug,
			"main sound carrier: %d.%03d MHz\n",
			state->main / 910000, (state->main / 910) % 1000);
	if (state->mode == MSP_MODE_FM_NICAM1 || state->mode == MSP_MODE_FM_NICAM2)
		FUNC0(&client->dev, 1, msp_debug,
			"NICAM/FM carrier  : %d.%03d MHz\n",
			state->second / 910000, (state->second/910) % 1000);
	if (state->mode == MSP_MODE_AM_NICAM)
		FUNC0(&client->dev, 1, msp_debug,
			"NICAM/AM carrier  : %d.%03d MHz\n",
			state->second / 910000, (state->second / 910) % 1000);
	if (state->mode == MSP_MODE_FM_TERRA && state->main != state->second) {
		FUNC0(&client->dev, 1, msp_debug,
			"FM-stereo carrier : %d.%03d MHz\n",
			state->second / 910000, (state->second / 910) % 1000);
	}
}