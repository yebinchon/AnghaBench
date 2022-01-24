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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int lpt_hardware_initialized ; 

int FUNC2(void *device, int tms, int tdi, int read_tdo)
{
	int data = 0;
	int tdo = 0;
	int initial_lpt_ctrl = 0;

	if (!lpt_hardware_initialized) {
		initial_lpt_ctrl = FUNC0(2);
		FUNC1(2, (initial_lpt_ctrl | 0x02) & 0xdf);
		lpt_hardware_initialized = 1;
	}

	data = ((tdi ? 0x40 : 0) | (tms ? 0x02 : 0));

	FUNC1(0, data);

	if (read_tdo) {
		tdo = FUNC0(1);
		tdo = ((tdo & 0x80) ? 0 : 1);
	}

	FUNC1(0, data | 0x01);

	FUNC1(0, data);

	return tdo;
}