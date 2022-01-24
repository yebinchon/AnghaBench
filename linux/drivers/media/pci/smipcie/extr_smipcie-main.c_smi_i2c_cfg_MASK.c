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
typedef  int u32 ;
struct smi_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct smi_dev *dev, u32 sw_ctl)
{
	u32 dwCtrl;

	dwCtrl = FUNC1(sw_ctl);
	dwCtrl &= ~0x18; /* disable output.*/
	dwCtrl |= 0x21; /* reset and software mode.*/
	dwCtrl &= ~0xff00;
	dwCtrl |= 0x6400;
	FUNC2(sw_ctl, dwCtrl);
	FUNC0(20);
	dwCtrl = FUNC1(sw_ctl);
	dwCtrl &= ~0x20;
	FUNC2(sw_ctl, dwCtrl);
}