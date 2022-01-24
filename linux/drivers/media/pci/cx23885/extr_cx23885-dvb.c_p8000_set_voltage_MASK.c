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
struct cx23885_tsport {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;
typedef  enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {struct cx23885_tsport* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC417_RWD ; 
 int SEC_VOLTAGE_13 ; 
 int SEC_VOLTAGE_18 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe,
			     enum fe_sec_voltage voltage)
{
	struct cx23885_tsport *port = fe->dvb->priv;
	struct cx23885_dev *dev = port->dev;

	if (voltage == SEC_VOLTAGE_18)
		FUNC0(MC417_RWD, 0x00001e00);
	else if (voltage == SEC_VOLTAGE_13)
		FUNC0(MC417_RWD, 0x00001a00);
	else
		FUNC0(MC417_RWD, 0x00001800);
	return 0;
}