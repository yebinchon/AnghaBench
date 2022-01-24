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
typedef  int /*<<< orphan*/  u32 ;
struct smiapp_sensor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMIAPP_QUIRK_FLAG_8BIT_READ_ONLY ; 
 int FUNC0 (struct smiapp_sensor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smiapp_sensor*,int /*<<< orphan*/ ) ; 

int FUNC2(struct smiapp_sensor *sensor, u32 reg, u32 *val)
{
	return FUNC0(
		sensor, reg, val,
		FUNC1(sensor,
				   SMIAPP_QUIRK_FLAG_8BIT_READ_ONLY));
}