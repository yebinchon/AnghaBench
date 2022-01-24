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
typedef  int u16 ;
struct saa7134_dev {int dummy; } ;

/* Variables and functions */
 int GPIO_COMMAND_ADDR ; 
 int GPIO_COMMAND_IDLE ; 
 int GPIO_COMMAND_READ ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPMODE0 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPMODE3 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPRESCAN ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPSTATUS0 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPSTATUS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct saa7134_dev *dev, u8 addr, u16 *data)
{
	FUNC3(SAA7134_GPIO_GPMODE0, 0xff);

	/* Write HPI address */
	FUNC3(SAA7134_GPIO_GPSTATUS0, addr);
	FUNC3(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_ADDR);
	FUNC3(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_IDLE);

	FUNC3(SAA7134_GPIO_GPMODE0, 0x00);

	/* Read low byte */
	FUNC3(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_READ);
	FUNC0(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	FUNC2(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	*data = FUNC1(SAA7134_GPIO_GPSTATUS0);
	FUNC3(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_IDLE);

	/* Read high byte */
	FUNC3(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_READ);
	FUNC0(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	FUNC2(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	*data |= FUNC1(SAA7134_GPIO_GPSTATUS0) << 8;
	FUNC3(SAA7134_GPIO_GPSTATUS2, GPIO_COMMAND_IDLE);

	return 0;
}