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
struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx88_core {int (* prev_set_voltage ) (struct dvb_frontend*,int) ;} ;
struct cx8802_dev {struct cx88_core* core; } ;
typedef  enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {struct cx8802_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_GP0_IO ; 
#define  SEC_VOLTAGE_13 130 
#define  SEC_VOLTAGE_18 129 
#define  SEC_VOLTAGE_OFF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
				  enum fe_sec_voltage voltage)
{
	struct cx8802_dev *dev = fe->dvb->priv;
	struct cx88_core *core = dev->core;

	FUNC1(MO_GP0_IO, 0x6040);
	switch (voltage) {
	case SEC_VOLTAGE_13:
		FUNC0(MO_GP0_IO, 0x20);
		break;
	case SEC_VOLTAGE_18:
		FUNC1(MO_GP0_IO, 0x20);
		break;
	case SEC_VOLTAGE_OFF:
		FUNC0(MO_GP0_IO, 0x20);
		break;
	}

	if (core->prev_set_voltage)
		return core->prev_set_voltage(fe, voltage);
	return 0;
}