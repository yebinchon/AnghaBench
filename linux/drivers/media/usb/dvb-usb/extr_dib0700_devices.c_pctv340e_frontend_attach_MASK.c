#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_3__* dev; struct dib0700_adapter_state* priv; } ;
struct dib0700_state {int is_dib7000pc; } ;
struct TYPE_6__ {scalar_t__ (* dib7000pc_detection ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* init ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  set_wbd_ref; } ;
struct dib0700_adapter_state {TYPE_2__ dib7000p_ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  i2c_adap; struct dib0700_state* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/ * fe; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GPIO10 ; 
 int /*<<< orphan*/  GPIO2 ; 
 int /*<<< orphan*/  GPIO6 ; 
 int /*<<< orphan*/  GPIO8 ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dib7000p_attach ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  pctv_340e_config ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_adapter *adap)
{
	struct dib0700_state *st = adap->dev->priv;
	struct dib0700_adapter_state *state = adap->priv;

	if (!FUNC2(dib7000p_attach, &state->dib7000p_ops))
		return -ENODEV;

	/* Power Supply on */
	FUNC1(adap->dev, GPIO6,  GPIO_OUT, 0);
	FUNC4(50);
	FUNC1(adap->dev, GPIO6,  GPIO_OUT, 1);
	FUNC4(100); /* Allow power supply to settle before probing */

	/* cx25843 reset */
	FUNC1(adap->dev, GPIO10,  GPIO_OUT, 0);
	FUNC4(1); /* cx25843 datasheet say 350us required */
	FUNC1(adap->dev, GPIO10,  GPIO_OUT, 1);

	/* LNA off for now */
	FUNC1(adap->dev, GPIO8,  GPIO_OUT, 1);

	/* Put the CX25843 to sleep for now since we're in digital mode */
	FUNC1(adap->dev, GPIO2, GPIO_OUT, 1);

	/* FIXME: not verified yet */
	FUNC0(adap->dev, 72, 1);

	FUNC4(500);

	if (state->dib7000p_ops.dib7000pc_detection(&adap->dev->i2c_adap) == 0) {
		/* Demodulator not found for some reason? */
		FUNC3(state->dib7000p_ops.set_wbd_ref);
		return -ENODEV;
	}

	adap->fe_adap[0].fe = state->dib7000p_ops.init(&adap->dev->i2c_adap, 0x12,
			      &pctv_340e_config);
	st->is_dib7000pc = 1;

	return adap->fe_adap[0].fe == NULL ? -ENODEV : 0;
}