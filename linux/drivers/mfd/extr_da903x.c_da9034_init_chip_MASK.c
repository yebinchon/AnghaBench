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
typedef  int /*<<< orphan*/  uint8_t ;
struct da903x_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9034_CHIP_ID ; 
 int DA9034_SYS_CTRL_A ; 
 int DA9034_SYS_CTRL_B ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct da903x_chip *chip)
{
	uint8_t chip_id;
	int err;

	err = FUNC0(chip->client, DA9034_CHIP_ID, &chip_id);
	if (err)
		return err;

	err = FUNC1(chip->client, DA9034_SYS_CTRL_A, 0xE8);
	if (err)
		return err;

	/* avoid SRAM power off during sleep*/
	FUNC1(chip->client, 0x10, 0x07);
	FUNC1(chip->client, 0x11, 0xff);
	FUNC1(chip->client, 0x12, 0xff);

	/* Enable the ONKEY power down functionality */
	FUNC1(chip->client, DA9034_SYS_CTRL_B, 0x20);
	FUNC1(chip->client, DA9034_SYS_CTRL_A, 0x60);

	/* workaround to make LEDs work */
	FUNC1(chip->client, 0x90, 0x01);
	FUNC1(chip->client, 0xB0, 0x08);

	/* make ADTV1 and SDTV1 effective */
	FUNC1(chip->client, 0x20, 0x00);

	FUNC2(chip->dev, "DA9034 (CHIP ID: 0x%02x) detected\n", chip_id);
	return 0;
}