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
struct tea5764_regs {int tnctrl; } ;
struct tea5764_device {struct tea5764_regs regs; } ;

/* Variables and functions */
 int TEA5764_TNCTRL_MST ; 
 int V4L2_TUNER_MODE_MONO ; 
 int /*<<< orphan*/  FUNC0 (struct tea5764_device*) ; 

__attribute__((used)) static void FUNC1(struct tea5764_device *radio, int audmode)
{
	struct tea5764_regs *r = &radio->regs;
	int tnctrl = r->tnctrl;

	if (audmode == V4L2_TUNER_MODE_MONO)
		r->tnctrl |= TEA5764_TNCTRL_MST;
	else
		r->tnctrl &= ~TEA5764_TNCTRL_MST;
	if (tnctrl != r->tnctrl)
		FUNC0(radio);
}