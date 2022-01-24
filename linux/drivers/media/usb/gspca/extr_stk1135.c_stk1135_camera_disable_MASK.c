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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ STK1135_REG_CIEPO ; 
 scalar_t__ STK1135_REG_GCTRL ; 
 scalar_t__ STK1135_REG_SCTRL ; 
 scalar_t__ STK1135_REG_SENSO ; 
 scalar_t__ STK1135_REG_TMGEN ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	/* set capture end Y position to 0 */
	FUNC0(gspca_dev, STK1135_REG_CIEPO + 2, 0x00);
	FUNC0(gspca_dev, STK1135_REG_CIEPO + 3, 0x00);
	/* disable capture */
	FUNC1(gspca_dev, STK1135_REG_SCTRL, 0x00, 0x80);

	/* enable sensor standby and diasble chip enable */
	FUNC2(gspca_dev, 0x00d, 0x0004, 0x000c);

	/* disable PLL */
	FUNC1(gspca_dev, STK1135_REG_SENSO + 2, 0x00, 0x01);
	/* disable timing generator */
	FUNC0(gspca_dev, STK1135_REG_TMGEN, 0x00);
	/* enable STOP clock */
	FUNC0(gspca_dev, STK1135_REG_SENSO + 1, 0x20);
	/* disable CLKOUT for sensor */
	FUNC0(gspca_dev, STK1135_REG_SENSO, 0x00);

	/* disable sensor (GPIO5) and enable GPIO0,3,6 (?) - sensor standby? */
	FUNC0(gspca_dev, STK1135_REG_GCTRL, 0x49);
}