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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct cx231xx {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_MODE_SET ; 
 int /*<<< orphan*/  GBULK_BIT_EN ; 
 int /*<<< orphan*/  Vbi ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cx231xx*,int,int) ; 

void FUNC6(struct cx231xx *dev)
{
	u32 _gpio_direction = 0;
	u32 value = 0;
	u8 val = 0;

	_gpio_direction = _gpio_direction & 0xFC0003FF;
	_gpio_direction = _gpio_direction | 0x03FDFC00;
	FUNC2(dev, _gpio_direction, (u8 *)&value, 4, 0, 0);

	FUNC4(dev, 0x07, &val);
	FUNC3(dev->dev, "verve_read_byte address0x07=0x%x\n", val);
	FUNC5(dev, 0x07, 0xF4);
	FUNC4(dev, 0x07, &val);
	FUNC3(dev->dev, "verve_read_byte address0x07=0x%x\n", val);

	FUNC0(dev, 1, Vbi);

	FUNC1(dev, EP_MODE_SET, 0x0500FE00);
	FUNC1(dev, GBULK_BIT_EN, 0xFFFDFFFF);

}