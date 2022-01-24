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
struct smiapp_sensor {scalar_t__* limits; } ;

/* Variables and functions */
 unsigned int SMIAPP_LIMIT_LAST ; 
 size_t SMIAPP_LIMIT_SCALER_N_MIN ; 
 int FUNC0 (struct smiapp_sensor*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct smiapp_sensor*,size_t,int) ; 

__attribute__((used)) static int FUNC2(struct smiapp_sensor *sensor)
{
	unsigned int i;
	int rval;

	for (i = 0; i < SMIAPP_LIMIT_LAST; i++) {
		rval = FUNC0(sensor, &i, 1);
		if (rval < 0)
			return rval;
	}

	if (sensor->limits[SMIAPP_LIMIT_SCALER_N_MIN] == 0)
		FUNC1(sensor, SMIAPP_LIMIT_SCALER_N_MIN, 16);

	return 0;
}