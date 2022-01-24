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
struct smiapp_sensor {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct smiapp_sensor*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct smiapp_sensor *sensor)
{
	int rval;

	/* Workaround: allows fast standby to work properly */
	rval = FUNC0(sensor, 0x3205, 0x04);
	if (rval < 0)
		return rval;

	/* Wait for 1 ms + one line => 2 ms is likely enough */
	FUNC1(2000, 2050);

	/* Restore it */
	rval = FUNC0(sensor, 0x3205, 0x00);
	if (rval < 0)
		return rval;

	return FUNC0(sensor, 0x3328, 0x80);
}