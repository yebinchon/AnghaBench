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
struct pt3_board {int lnb_on_cnt; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct pt3_board* priv; } ;
struct pt3_adapter {int cur_lnb; TYPE_1__ dvb_adap; } ;
struct dvb_frontend {int dummy; } ;
typedef  enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int SEC_VOLTAGE_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pt3_adapter* FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt3_board*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe, enum fe_sec_voltage volt)
{
	struct pt3_adapter *adap;
	struct pt3_board *pt3;
	bool on;

	/* LNB power is shared btw. 2 SAT-tuners */

	adap = FUNC2(fe);
	on = (volt != SEC_VOLTAGE_OFF);
	if (on == adap->cur_lnb)
		return 0;
	adap->cur_lnb = on;
	pt3 = adap->dvb_adap.priv;
	if (FUNC0(&pt3->lock))
		return -ERESTARTSYS;
	if (on)
		pt3->lnb_on_cnt++;
	else
		pt3->lnb_on_cnt--;

	if (on && pt3->lnb_on_cnt <= 1) {
		pt3->lnb_on_cnt = 1;
		FUNC3(pt3, true);
	} else if (!on && pt3->lnb_on_cnt <= 0) {
		pt3->lnb_on_cnt = 0;
		FUNC3(pt3, false);
	}
	FUNC1(&pt3->lock);
	return 0;
}