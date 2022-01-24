#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct ttusb {TYPE_8__* fe; int /*<<< orphan*/  adapter; TYPE_4__* dev; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  revision; } ;
struct TYPE_12__ {int /*<<< orphan*/  set_params; int /*<<< orphan*/  init; } ;
struct TYPE_13__ {TYPE_1__ tuner_ops; void* set_voltage; } ;
struct TYPE_17__ {TYPE_2__ ops; } ;
struct TYPE_16__ {int /*<<< orphan*/  inittab; } ;
struct TYPE_14__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_15__ {TYPE_3__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTUSB_REV_2_2 ; 
 int /*<<< orphan*/  alps_bsbe1_inittab ; 
 TYPE_5__ alps_stv0299_config ; 
 int /*<<< orphan*/  alps_tdbe2_config ; 
 int /*<<< orphan*/  alps_tdbe2_tuner_set_params ; 
 TYPE_5__ alps_tdmb7_config ; 
 int /*<<< orphan*/  alps_tdmb7_tuner_set_params ; 
 int /*<<< orphan*/  cx22700_attach ; 
 void* FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 TYPE_5__ dvbc_philips_tdm1316l_config ; 
 int /*<<< orphan*/  dvbc_philips_tdm1316l_tuner_set_params ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lnbp21_attach ; 
 TYPE_5__ philips_tdm1316l_config ; 
 int /*<<< orphan*/  philips_tdm1316l_tuner_init ; 
 int /*<<< orphan*/  philips_tdm1316l_tuner_set_params ; 
 int /*<<< orphan*/  philips_tsa5059_tuner_set_params ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ttusb*) ; 
 int /*<<< orphan*/  stv0297_attach ; 
 int /*<<< orphan*/  stv0299_attach ; 
 int /*<<< orphan*/  tda10046_attach ; 
 int /*<<< orphan*/  tda8083_attach ; 
 TYPE_5__ ttusb_novas_grundig_29504_491_config ; 
 int /*<<< orphan*/  ttusb_novas_grundig_29504_491_tuner_set_params ; 
 void* ttusb_set_voltage ; 
 int /*<<< orphan*/  ves1820_attach ; 

__attribute__((used)) static void FUNC6(struct ttusb* ttusb)
{
	switch(FUNC3(ttusb->dev->descriptor.idProduct)) {
	case 0x1003: // Hauppauge/TT Nova-USB-S budget (stv0299/ALPS BSRU6|BSBE1(tsa5059))
		// try the stv0299 based first
		ttusb->fe = FUNC0(stv0299_attach, &alps_stv0299_config, &ttusb->i2c_adap);
		if (ttusb->fe != NULL) {
			ttusb->fe->ops.tuner_ops.set_params = philips_tsa5059_tuner_set_params;

			if(ttusb->revision == TTUSB_REV_2_2) { // ALPS BSBE1
				alps_stv0299_config.inittab = alps_bsbe1_inittab;
				FUNC0(lnbp21_attach, ttusb->fe, &ttusb->i2c_adap, 0, 0);
			} else { // ALPS BSRU6
				ttusb->fe->ops.set_voltage = ttusb_set_voltage;
			}
			break;
		}

		// Grundig 29504-491
		ttusb->fe = FUNC0(tda8083_attach, &ttusb_novas_grundig_29504_491_config, &ttusb->i2c_adap);
		if (ttusb->fe != NULL) {
			ttusb->fe->ops.tuner_ops.set_params = ttusb_novas_grundig_29504_491_tuner_set_params;
			ttusb->fe->ops.set_voltage = ttusb_set_voltage;
			break;
		}
		break;

	case 0x1004: // Hauppauge/TT DVB-C budget (ves1820/ALPS TDBE2(sp5659))
		ttusb->fe = FUNC0(ves1820_attach, &alps_tdbe2_config, &ttusb->i2c_adap, FUNC5(ttusb));
		if (ttusb->fe != NULL) {
			ttusb->fe->ops.tuner_ops.set_params = alps_tdbe2_tuner_set_params;
			break;
		}

		ttusb->fe = FUNC0(stv0297_attach, &dvbc_philips_tdm1316l_config, &ttusb->i2c_adap);
		if (ttusb->fe != NULL) {
			ttusb->fe->ops.tuner_ops.set_params = dvbc_philips_tdm1316l_tuner_set_params;
			break;
		}
		break;

	case 0x1005: // Hauppauge/TT Nova-USB-t budget (tda10046/Philips td1316(tda6651tt) OR cx22700/ALPS TDMB7(??))
		// try the ALPS TDMB7 first
		ttusb->fe = FUNC0(cx22700_attach, &alps_tdmb7_config, &ttusb->i2c_adap);
		if (ttusb->fe != NULL) {
			ttusb->fe->ops.tuner_ops.set_params = alps_tdmb7_tuner_set_params;
			break;
		}

		// Philips td1316
		ttusb->fe = FUNC0(tda10046_attach, &philips_tdm1316l_config, &ttusb->i2c_adap);
		if (ttusb->fe != NULL) {
			ttusb->fe->ops.tuner_ops.init = philips_tdm1316l_tuner_init;
			ttusb->fe->ops.tuner_ops.set_params = philips_tdm1316l_tuner_set_params;
			break;
		}
		break;
	}

	if (ttusb->fe == NULL) {
		FUNC4("dvb-ttusb-budget: A frontend driver was not found for device [%04x:%04x]\n",
		       FUNC3(ttusb->dev->descriptor.idVendor),
		       FUNC3(ttusb->dev->descriptor.idProduct));
	} else {
		if (FUNC2(&ttusb->adapter, ttusb->fe)) {
			FUNC4("dvb-ttusb-budget: Frontend registration failed!\n");
			FUNC1(ttusb->fe);
			ttusb->fe = NULL;
		}
	}
}