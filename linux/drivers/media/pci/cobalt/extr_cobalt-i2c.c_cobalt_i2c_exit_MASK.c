#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cobalt {TYPE_1__* i2c_adap; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int COBALT_NUM_ADAPTERS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(struct cobalt *cobalt)
{
	int i;

	FUNC0(1, "i2c exit\n");

	for (i = 0; i < COBALT_NUM_ADAPTERS; i++) {
		FUNC1("unregistered bus %s\n", cobalt->i2c_adap[i].name);
		FUNC2(&cobalt->i2c_adap[i]);
	}
}