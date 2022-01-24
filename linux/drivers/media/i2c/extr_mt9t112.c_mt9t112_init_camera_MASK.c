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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client const*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client const*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client const*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct i2c_client const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct i2c_client const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct i2c_client const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client const*) ; 

__attribute__((used)) static int FUNC10(const struct i2c_client *client)
{
	int ret;

	FUNC0(ret, FUNC9(client));
	FUNC0(ret, FUNC4(client));
	FUNC0(ret, FUNC5(client));
	FUNC0(ret, FUNC3(client));

	FUNC7(ret, client, 0x0018, 0x0004, 0);

	/* Analog setting B.*/
	FUNC8(ret, client, 0x3084, 0x2409);
	FUNC8(ret, client, 0x3092, 0x0A49);
	FUNC8(ret, client, 0x3094, 0x4949);
	FUNC8(ret, client, 0x3096, 0x4950);

	/*
	 * Disable adaptive clock.
	 * PRI_A_CONFIG_JPEG_OB_TX_CONTROL_VAR
	 * PRI_B_CONFIG_JPEG_OB_TX_CONTROL_VAR
	 */
	FUNC6(ret, client, FUNC1(26, 160), 0x0A2E);
	FUNC6(ret, client, FUNC1(27, 160), 0x0A2E);

	/*
	 * Configure Status in Status_before_length Format and enable header.
	 * PRI_B_CONFIG_JPEG_OB_TX_CONTROL_VAR
	 */
	FUNC6(ret, client, FUNC1(27, 144), 0x0CB4);

	/*
	 * Enable JPEG in context B.
	 * PRI_B_CONFIG_JPEG_OB_TX_CONTROL_VAR
	 */
	FUNC6(ret, client, FUNC2(27, 142), 0x01);

	/* Disable Dac_TXLO. */
	FUNC8(ret, client, 0x316C, 0x350F);

	/* Set max slew rates. */
	FUNC8(ret, client, 0x1E, 0x777);

	return ret;
}