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
struct msp_state {int opmode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
#define  OPMODE_AUTODETECT 130 
#define  OPMODE_AUTOSELECT 129 
#define  OPMODE_MANUAL 128 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 struct msp_state* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct i2c_client *client)
{
	struct msp_state *state = FUNC3(FUNC0(client));

	switch (state->opmode) {
	case OPMODE_MANUAL:
	case OPMODE_AUTODETECT:
		FUNC1(client);
		break;
	case OPMODE_AUTOSELECT:
		FUNC2(client);
		break;
	}
}