#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rtsx_ucr {TYPE_1__* pusb_intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HS_VCONTROL ; 
 int /*<<< orphan*/  HS_VLOADM ; 
 int /*<<< orphan*/  HS_VSTAIN ; 
 int /*<<< orphan*/  MODE_C ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_ucr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_ucr*) ; 
 int FUNC3 (struct rtsx_ucr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct rtsx_ucr *ucr, u8 addr, u8 val)
{
	FUNC0(&ucr->pusb_intf->dev, "Write 0x%x to phy register 0x%x\n",
			val, addr);

	FUNC2(ucr);

	FUNC1(ucr, WRITE_REG_CMD, HS_VSTAIN, 0xFF, val);
	FUNC1(ucr, WRITE_REG_CMD, HS_VCONTROL, 0xFF, addr & 0x0F);
	FUNC1(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x00);
	FUNC1(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x00);
	FUNC1(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x01);
	FUNC1(ucr, WRITE_REG_CMD, HS_VCONTROL,
			0xFF, (addr >> 4) & 0x0F);
	FUNC1(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x00);
	FUNC1(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x00);
	FUNC1(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x01);

	return FUNC3(ucr, MODE_C, 100);
}