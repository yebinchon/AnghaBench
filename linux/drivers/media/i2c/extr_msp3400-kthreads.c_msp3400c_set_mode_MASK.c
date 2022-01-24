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
struct msp_state {int route_in; int mode; scalar_t__ has_nicam; int /*<<< orphan*/  rxsubchans; } ;
struct msp3400c_init_data_dem {int ad_cv; int* fir1; int* fir2; int mode_reg; int dsp_matrix; int /*<<< orphan*/  dsp_src; int /*<<< orphan*/  cdo2; int /*<<< orphan*/  cdo1; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_TUNER_SUB_MONO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct msp3400c_init_data_dem* msp3400c_init_data ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msp_debug ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int,int) ; 
 struct msp_state* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct i2c_client *client, int mode)
{
	struct msp_state *state = FUNC6(FUNC1(client));
	struct msp3400c_init_data_dem *data = &msp3400c_init_data[mode];
	int tuner = (state->route_in >> 3) & 1;
	int i;

	FUNC0(&client->dev, 1, msp_debug, "set_mode: %d\n", mode);
	state->mode = mode;
	state->rxsubchans = V4L2_TUNER_SUB_MONO;

	FUNC4(client, 0x00bb, data->ad_cv | (tuner ? 0x100 : 0));

	for (i = 5; i >= 0; i--)               /* fir 1 */
		FUNC4(client, 0x0001, data->fir1[i]);

	FUNC4(client, 0x0005, 0x0004); /* fir 2 */
	FUNC4(client, 0x0005, 0x0040);
	FUNC4(client, 0x0005, 0x0000);
	for (i = 5; i >= 0; i--)
		FUNC4(client, 0x0005, data->fir2[i]);

	FUNC4(client, 0x0083, data->mode_reg);

	FUNC2(client, data->cdo1, data->cdo2);

	FUNC3(client, data->dsp_src);
	/* set prescales */

	/* volume prescale for SCART (AM mono input) */
	FUNC5(client, 0x000d, 0x1900);
	FUNC5(client, 0x000e, data->dsp_matrix);
	if (state->has_nicam) /* nicam prescale */
		FUNC5(client, 0x0010, 0x5a00);
}