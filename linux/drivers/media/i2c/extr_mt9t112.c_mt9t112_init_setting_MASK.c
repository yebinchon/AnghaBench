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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct i2c_client const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct i2c_client const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(const struct i2c_client *client)
{
	int ret;

	/* Adaptive Output Clock (A) */
	FUNC2(ret, client, FUNC0(26, 160), 0x0040, 0x0000);

	/* Read Mode (A) */
	FUNC3(ret, client, FUNC0(18, 12), 0x0024);

	/* Fine Correction (A) */
	FUNC3(ret, client, FUNC0(18, 15), 0x00CC);

	/* Fine IT Min (A) */
	FUNC3(ret, client, FUNC0(18, 17), 0x01f1);

	/* Fine IT Max Margin (A) */
	FUNC3(ret, client, FUNC0(18, 19), 0x00fF);

	/* Base Frame Lines (A) */
	FUNC3(ret, client, FUNC0(18, 29), 0x032D);

	/* Min Line Length (A) */
	FUNC3(ret, client, FUNC0(18, 31), 0x073a);

	/* Line Length (A) */
	FUNC3(ret, client, FUNC0(18, 37), 0x07d0);

	/* Adaptive Output Clock (B) */
	FUNC2(ret, client, FUNC0(27, 160), 0x0040, 0x0000);

	/* Row Start (B) */
	FUNC3(ret, client, FUNC0(18, 74), 0x004);

	/* Column Start (B) */
	FUNC3(ret, client, FUNC0(18, 76), 0x004);

	/* Row End (B) */
	FUNC3(ret, client, FUNC0(18, 78), 0x60B);

	/* Column End (B) */
	FUNC3(ret, client, FUNC0(18, 80), 0x80B);

	/* Fine Correction (B) */
	FUNC3(ret, client, FUNC0(18, 87), 0x008C);

	/* Fine IT Min (B) */
	FUNC3(ret, client, FUNC0(18, 89), 0x01F1);

	/* Fine IT Max Margin (B) */
	FUNC3(ret, client, FUNC0(18, 91), 0x00FF);

	/* Base Frame Lines (B) */
	FUNC3(ret, client, FUNC0(18, 101), 0x0668);

	/* Min Line Length (B) */
	FUNC3(ret, client, FUNC0(18, 103), 0x0AF0);

	/* Line Length (B) */
	FUNC3(ret, client, FUNC0(18, 109), 0x0AF0);

	/*
	 * Flicker Detection registers.
	 * This section should be replaced whenever new timing file is
	 * generated. All the following registers need to be replaced.
	 * Following registers are generated from Register Wizard but user can
	 * modify them. For detail see auto flicker detection tuning.
	 */

	/* FD_FDPERIOD_SELECT */
	FUNC3(ret, client, FUNC1(8, 5), 0x01);

	/* PRI_B_CONFIG_FD_ALGO_RUN */
	FUNC3(ret, client, FUNC0(27, 17), 0x0003);

	/* PRI_A_CONFIG_FD_ALGO_RUN */
	FUNC3(ret, client, FUNC0(26, 17), 0x0003);

	/*
	 * AFD range detection tuning registers.
	 */

	/* Search_f1_50 */
	FUNC3(ret, client, FUNC1(18, 165), 0x25);

	/* Search_f2_50 */
	FUNC3(ret, client, FUNC1(18, 166), 0x28);

	/* Search_f1_60 */
	FUNC3(ret, client, FUNC1(18, 167), 0x2C);

	/* Search_f2_60 */
	FUNC3(ret, client, FUNC1(18, 168), 0x2F);

	/* Period_50Hz (A) */
	FUNC3(ret, client, FUNC1(18, 68), 0xBA);

	/* Secret register by Aptina. */
	/* Period_50Hz (A MSB) */
	FUNC3(ret, client, FUNC1(18, 303), 0x00);

	/* Period_60Hz (A) */
	FUNC3(ret, client, FUNC1(18, 69), 0x9B);

	/* Secret register by Aptina. */
	/* Period_60Hz (A MSB) */
	FUNC3(ret, client, FUNC1(18, 301), 0x00);

	/* Period_50Hz (B) */
	FUNC3(ret, client, FUNC1(18, 140), 0x82);

	/* Secret register by Aptina. */
	/* Period_50Hz (B) MSB */
	FUNC3(ret, client, FUNC1(18, 304), 0x00);

	/* Period_60Hz (B) */
	FUNC3(ret, client, FUNC1(18, 141), 0x6D);

	/* Secret register by Aptina. */
	/* Period_60Hz (B) MSB */
	FUNC3(ret, client, FUNC1(18, 302), 0x00);

	/* FD Mode */
	FUNC3(ret, client, FUNC1(8, 2), 0x10);

	/* Stat_min */
	FUNC3(ret, client, FUNC1(8, 9), 0x02);

	/* Stat_max */
	FUNC3(ret, client, FUNC1(8, 10), 0x03);

	/* Min_amplitude */
	FUNC3(ret, client, FUNC1(8, 12), 0x0A);

	/* RX FIFO Watermark (A) */
	FUNC3(ret, client, FUNC0(18, 70), 0x0014);

	/* RX FIFO Watermark (B) */
	FUNC3(ret, client, FUNC0(18, 142), 0x0014);

	/* MCLK: 16MHz
	 * PCLK: 73MHz
	 * CorePixCLK: 36.5 MHz
	 */
	FUNC3(ret, client, FUNC1(18, 0x0044), 133);
	FUNC3(ret, client, FUNC1(18, 0x0045), 110);
	FUNC3(ret, client, FUNC1(18, 0x008c), 130);
	FUNC3(ret, client, FUNC1(18, 0x008d), 108);

	FUNC3(ret, client, FUNC1(18, 0x00A5), 27);
	FUNC3(ret, client, FUNC1(18, 0x00a6), 30);
	FUNC3(ret, client, FUNC1(18, 0x00a7), 32);
	FUNC3(ret, client, FUNC1(18, 0x00a8), 35);

	return ret;
}