#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sd {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* stv_bridge_init ; 
 TYPE_1__* vv6410_sensor_init ; 

__attribute__((used)) static int FUNC3(struct sd *sd)
{
	int err = 0, i;

	for (i = 0; i < FUNC0(stv_bridge_init); i++)
		FUNC1(sd, stv_bridge_init[i].addr, stv_bridge_init[i].data);

	err = FUNC2(sd, (u8 *) vv6410_sensor_init,
					 FUNC0(vv6410_sensor_init));
	return (err < 0) ? err : 0;
}