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
struct as10x_tps {int dummy; } ;
struct as10x_bus_adapter_t {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct as10x_bus_adapter_t*,struct as10x_tps*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *priv, struct as10x_tps *tps)
{
	struct as10x_bus_adapter_t *bus_adap = priv;
	int ret;

	if (FUNC1(&bus_adap->lock))
		return -EBUSY;

	/* send abilis command: GET_TPS */
	ret = FUNC0(bus_adap, tps);

	FUNC2(&bus_adap->lock);

	return ret;
}