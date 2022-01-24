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
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static inline void FUNC4(char *payload, int *p_temp,
					 int *p_max_temp, char *sensor_name)
{
	s16 temp;

	if (p_temp) {
		temp = FUNC3(payload);
		*p_temp = FUNC0(temp);
	}
	if (p_max_temp) {
		temp = FUNC1(payload);
		*p_max_temp = FUNC0(temp);
	}
	if (sensor_name)
		FUNC2(payload, sensor_name);
}