#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i2c_adapter {int /*<<< orphan*/  name; } ;
struct mantis_pci {struct dvb_frontend* fe; struct mantis_hwconfig* hwconfig; struct i2c_adapter adapter; } ;
struct mantis_hwconfig {int /*<<< orphan*/  reset; } ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  POWER_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 struct dvb_frontend* FUNC1 (int /*<<< orphan*/ ,struct dvb_frontend*,struct i2c_adapter*,...) ; 
 int /*<<< orphan*/  env57h12d5_config ; 
 int FUNC2 (struct mantis_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mantis_pci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mantis_vp3030_config ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  tda665x_attach ; 
 int /*<<< orphan*/  zl10353_attach ; 

__attribute__((used)) static int FUNC5(struct mantis_pci *mantis, struct dvb_frontend *fe)
{
	struct i2c_adapter *adapter	= &mantis->adapter;
	struct mantis_hwconfig *config	= mantis->hwconfig;
	int err = 0;

	FUNC3(mantis, config->reset, 0);
	FUNC4(100);
	err = FUNC2(mantis, POWER_ON);
	FUNC4(100);
	FUNC3(mantis, config->reset, 1);

	if (err == 0) {
		FUNC4(250);
		FUNC0(MANTIS_ERROR, 1, "Probing for 10353 (DVB-T)");
		fe = FUNC1(zl10353_attach, &mantis_vp3030_config, adapter);

		if (!fe)
			return -1;

		FUNC1(tda665x_attach, fe, &env57h12d5_config, adapter);
	} else {
		FUNC0(MANTIS_ERROR, 1, "Frontend on <%s> POWER ON failed! <%d>",
			adapter->name,
			err);

		return -EIO;

	}
	mantis->fe = fe;
	FUNC0(MANTIS_ERROR, 1, "Done!");

	return 0;
}