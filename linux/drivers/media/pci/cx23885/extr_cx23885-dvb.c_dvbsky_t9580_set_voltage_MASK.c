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
struct cx23885_tsport {int /*<<< orphan*/  (* fe_set_voltage ) (struct dvb_frontend*,int) ;struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;
typedef  enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {struct cx23885_tsport* priv; } ;

/* Variables and functions */
 int GPIO_0 ; 
 int GPIO_1 ; 
#define  SEC_VOLTAGE_13 130 
#define  SEC_VOLTAGE_18 129 
#define  SEC_VOLTAGE_OFF 128 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
					enum fe_sec_voltage voltage)
{
	struct cx23885_tsport *port = fe->dvb->priv;
	struct cx23885_dev *dev = port->dev;

	FUNC1(dev, GPIO_0 | GPIO_1, 1);

	switch (voltage) {
	case SEC_VOLTAGE_13:
		FUNC2(dev, GPIO_1);
		FUNC0(dev, GPIO_0);
		break;
	case SEC_VOLTAGE_18:
		FUNC2(dev, GPIO_1);
		FUNC2(dev, GPIO_0);
		break;
	case SEC_VOLTAGE_OFF:
		FUNC0(dev, GPIO_1);
		FUNC0(dev, GPIO_0);
		break;
	}

	/* call the frontend set_voltage function */
	port->fe_set_voltage(fe, voltage);

	return 0;
}