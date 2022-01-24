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
typedef  int u32 ;
struct dvb_frontend {struct ddb_input* sec_priv; } ;
struct ddb_port {size_t lnr; struct ddb_dvb* dvb; struct ddb* dev; } ;
struct ddb_input {int nr; struct ddb_port* port; } ;
struct ddb_dvb {int tone; int /*<<< orphan*/  voltage; int /*<<< orphan*/  input; } ;
struct ddb {TYPE_2__* link; } ;
typedef  enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;
struct TYPE_3__ {int fmode; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ lnb; } ;

/* Variables and functions */
 int SEC_TONE_ON ; 
 int /*<<< orphan*/  SEC_VOLTAGE_18 ; 
 int FUNC0 (struct ddb*,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  old_quattro ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
{
	struct ddb_input *input = fe->sec_priv;
	struct ddb_port *port = input->port;
	struct ddb *dev = port->dev;
	struct ddb_dvb *dvb = &port->dvb[input->nr & 1];
	int tuner = 0;
	int res = 0;
	u32 fmode = dev->link[port->lnr].lnb.fmode;

	FUNC2(&dev->link[port->lnr].lnb.lock);
	dvb->tone = tone;
	switch (fmode) {
	default:
	case 0:
	case 3:
		res = FUNC0(dev, port->lnr, dvb->input, tone);
		break;
	case 1:
	case 2:
		if (old_quattro) {
			if (dvb->tone == SEC_TONE_ON)
				tuner |= 2;
			if (dvb->voltage == SEC_VOLTAGE_18)
				tuner |= 1;
		} else {
			if (dvb->tone == SEC_TONE_ON)
				tuner |= 1;
			if (dvb->voltage == SEC_VOLTAGE_18)
				tuner |= 2;
		}
		res = FUNC1(fe, tuner);
		break;
	}
	FUNC3(&dev->link[port->lnr].lnb.lock);
	return res;
}