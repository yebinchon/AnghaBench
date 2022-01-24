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
typedef  int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int /*<<< orphan*/  R518_I2C_CTL ; 
 int /*<<< orphan*/  R51x_I2C_DATA ; 
 int /*<<< orphan*/  R51x_I2C_SADDR_2 ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct sd *sd, u8 reg)
{
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
	int value;

	/* Select camera register */
	FUNC3(sd, R51x_I2C_SADDR_2, reg);

	/* Initiate 2-byte write cycle */
	FUNC3(sd, R518_I2C_CTL, 0x03);
	FUNC2(sd, R518_I2C_CTL);

	/* Initiate 2-byte read cycle */
	FUNC3(sd, R518_I2C_CTL, 0x05);
	FUNC2(sd, R518_I2C_CTL);

	value = FUNC1(sd, R51x_I2C_DATA);
	FUNC0(gspca_dev, D_USBI, "ov518_i2c_r %02x %02x\n", reg, value);
	return value;
}