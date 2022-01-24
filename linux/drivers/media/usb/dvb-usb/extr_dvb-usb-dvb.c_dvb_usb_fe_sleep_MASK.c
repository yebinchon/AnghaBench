#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {int /*<<< orphan*/  dev; TYPE_2__* fe_adap; } ;
struct dvb_frontend {size_t id; TYPE_1__* dvb; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fe_sleep ) (struct dvb_frontend*) ;} ;
struct TYPE_3__ {struct dvb_usb_adapter* priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct dvb_usb_adapter *adap = fe->dvb->priv;

	if (adap->fe_adap[fe->id].fe_sleep)
		adap->fe_adap[fe->id].fe_sleep(fe);

	FUNC1(fe, 0);

	return FUNC0(adap->dev, 0);
}