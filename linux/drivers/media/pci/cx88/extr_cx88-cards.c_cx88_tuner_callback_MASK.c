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
struct i2c_algo_bit_data {struct cx88_core* data; } ;
struct TYPE_2__ {int tuner_type; } ;
struct cx88_core {TYPE_1__ board; } ;

/* Variables and functions */
 int DVB_FRONTEND_COMPONENT_TUNER ; 
 int EINVAL ; 
#define  TUNER_XC2028 130 
#define  TUNER_XC4000 129 
#define  TUNER_XC5000 128 
 int FUNC0 (struct cx88_core*,int,int) ; 
 int FUNC1 (struct cx88_core*,int,int) ; 
 int FUNC2 (struct cx88_core*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(void *priv, int component, int command, int arg)
{
	struct i2c_algo_bit_data *i2c_algo = priv;
	struct cx88_core *core;

	if (!i2c_algo) {
		FUNC4("Error - i2c private data undefined.\n");
		return -EINVAL;
	}

	core = i2c_algo->data;

	if (!core) {
		FUNC4("Error - device struct undefined.\n");
		return -EINVAL;
	}

	if (component != DVB_FRONTEND_COMPONENT_TUNER)
		return -EINVAL;

	switch (core->board.tuner_type) {
	case TUNER_XC2028:
		FUNC3(1, "Calling XC2028/3028 callback\n");
		return FUNC0(core, command, arg);
	case TUNER_XC4000:
		FUNC3(1, "Calling XC4000 callback\n");
		return FUNC1(core, command, arg);
	case TUNER_XC5000:
		FUNC3(1, "Calling XC5000 callback\n");
		return FUNC2(core, command, arg);
	}
	FUNC4("Error: Calling callback for tuner %d\n",
	       core->board.tuner_type);
	return -EINVAL;
}