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
typedef  int /*<<< orphan*/  uint32_t ;
struct as10x_bus_adapter_t {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_LNA ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct as10x_bus_adapter_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct as10x_bus_adapter_t*) ; 
 int FUNC2 (struct as10x_bus_adapter_t*) ; 
 scalar_t__ elna_enable ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *priv, int acquire, uint32_t elna_cfg)
{
	struct as10x_bus_adapter_t *bus_adap = priv;
	int ret;

	if (FUNC3(&bus_adap->lock))
		return -EBUSY;

	if (acquire) {
		if (elna_enable)
			FUNC0(bus_adap,
					      CONTEXT_LNA, elna_cfg);

		ret = FUNC2(bus_adap);
	} else {
		ret = FUNC1(bus_adap);
	}

	FUNC4(&bus_adap->lock);

	return ret;
}