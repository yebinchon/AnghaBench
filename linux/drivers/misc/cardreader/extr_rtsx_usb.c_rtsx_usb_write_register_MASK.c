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
typedef  int /*<<< orphan*/  u16 ;
struct rtsx_ucr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_C ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_ucr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_ucr*) ; 
 int FUNC2 (struct rtsx_ucr*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct rtsx_ucr *ucr, u16 addr, u8 mask, u8 data)
{
	FUNC1(ucr);
	FUNC0(ucr, WRITE_REG_CMD, addr, mask, data);
	return FUNC2(ucr, MODE_C, 100);
}