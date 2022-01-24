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
 int /*<<< orphan*/  SMIAPP_LIMIT_MIN_PLL_IP_FREQ_HZ ; 
 int /*<<< orphan*/  FUNC0 (struct smiapp_sensor*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct smiapp_sensor *sensor)
{
	FUNC0(sensor, SMIAPP_LIMIT_MIN_PLL_IP_FREQ_HZ, 2700000);

	return 0;
}