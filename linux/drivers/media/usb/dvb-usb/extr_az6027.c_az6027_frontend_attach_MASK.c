#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {TYPE_3__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  demod_address; } ;
struct TYPE_14__ {int /*<<< orphan*/  tuner_address; } ;
struct TYPE_11__ {int /*<<< orphan*/  set_voltage; } ;
struct TYPE_13__ {TYPE_2__ ops; } ;
struct TYPE_12__ {TYPE_4__* fe; } ;
struct TYPE_10__ {int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  az6027_set_voltage ; 
 TYPE_7__ az6027_stb0899_config ; 
 TYPE_5__ az6027_stb6100_config ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dvb_usb_adapter*,...) ; 
 TYPE_4__* FUNC5 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_adapter *adap)
{

	FUNC1(adap);
	FUNC2(adap);

	FUNC4("adap = %p, dev = %p\n", adap, adap->dev);
	adap->fe_adap[0].fe = FUNC5(&az6027_stb0899_config, &adap->dev->i2c_adap);

	if (adap->fe_adap[0].fe) {
		FUNC4("found STB0899 DVB-S/DVB-S2 frontend @0x%02x", az6027_stb0899_config.demod_address);
		if (FUNC6(adap->fe_adap[0].fe, &az6027_stb6100_config, &adap->dev->i2c_adap)) {
			FUNC4("found STB6100 DVB-S/DVB-S2 frontend @0x%02x", az6027_stb6100_config.tuner_address);
			adap->fe_adap[0].fe->ops.set_voltage = az6027_set_voltage;
			FUNC0(adap);
		} else {
			adap->fe_adap[0].fe = NULL;
		}
	} else
		FUNC7("no front-end attached\n");

	FUNC3(adap, 0);

	return 0;
}