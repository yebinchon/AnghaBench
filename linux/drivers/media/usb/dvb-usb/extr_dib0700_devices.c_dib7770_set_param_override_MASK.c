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
typedef  int u8 ;
typedef  int u16 ;
struct dvb_usb_adapter {struct dib0700_adapter_state* priv; } ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {TYPE_1__* dvb; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_wbd_ref ) (struct dvb_frontend*,int) ;int /*<<< orphan*/  (* set_gpio ) (struct dvb_frontend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct dib0700_adapter_state {int (* set_param_save ) (struct dvb_frontend*) ;TYPE_2__ dib7000p_ops; } ;
struct TYPE_3__ {struct dvb_usb_adapter* priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  BAND_UHF 129 
#define  BAND_VHF 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int) ; 
 int FUNC6 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe)
{
	struct dtv_frontend_properties *p = &fe->dtv_property_cache;
	struct dvb_usb_adapter *adap = fe->dvb->priv;
	struct dib0700_adapter_state *state = adap->priv;

	u16 offset;
	u8 band = FUNC0(p->frequency/1000);
	switch (band) {
	case BAND_VHF:
		state->dib7000p_ops.set_gpio(fe, 0, 0, 1);
		offset = 850;
		break;
	case BAND_UHF:
	default:
		state->dib7000p_ops.set_gpio(fe, 0, 0, 0);
		offset = 250;
		break;
	}
	FUNC1("WBD for DiB7000P: %d\n", offset + FUNC2(fe));
	state->dib7000p_ops.set_wbd_ref(fe, offset + FUNC2(fe));
	return state->set_param_save(fe);
}