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
struct pt3_board {struct pt3_adapter** adaps; } ;
struct dmx_demux {int /*<<< orphan*/  (* close ) (struct dmx_demux*) ;} ;
struct TYPE_4__ {struct dmx_demux dmx; } ;
struct pt3_adapter {int /*<<< orphan*/  dvb_adap; TYPE_2__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  i2c_demod; int /*<<< orphan*/  i2c_tuner; TYPE_1__* fe; scalar_t__ thread; } ;
struct TYPE_3__ {scalar_t__ frontend_priv; int /*<<< orphan*/ * callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt3_adapter*) ; 
 int /*<<< orphan*/  one_adapter ; 
 int /*<<< orphan*/  FUNC6 (struct pt3_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt3_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmx_demux*) ; 

__attribute__((used)) static void FUNC9(struct pt3_board *pt3, int index)
{
	struct pt3_adapter *adap;
	struct dmx_demux *dmx;

	adap = pt3->adaps[index];
	if (adap == NULL)
		return;

	/* stop demux kthread */
	if (adap->thread)
		FUNC7(adap);

	dmx = &adap->demux.dmx;
	dmx->close(dmx);
	if (adap->fe) {
		adap->fe->callback = NULL;
		if (adap->fe->frontend_priv)
			FUNC4(adap->fe);
		FUNC2(adap->i2c_tuner);
		FUNC2(adap->i2c_demod);
	}
	FUNC6(adap);
	FUNC1(&adap->dmxdev);
	FUNC0(&adap->demux);
	if (index == 0 || !one_adapter)
		FUNC3(&adap->dvb_adap);
	FUNC5(adap);
	pt3->adaps[index] = NULL;
}