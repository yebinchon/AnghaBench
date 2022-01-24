#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dm1105_dev {int boardnr; TYPE_3__* fe; int /*<<< orphan*/  dvb_adapter; TYPE_1__* pdev; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  i2c_bb_adap; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* release ) (TYPE_3__*) ;void* set_voltage; } ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  DM1105_BOARD_AXESS_DM05 131 
#define  DM1105_BOARD_DVBWORLD_2002 130 
#define  DM1105_BOARD_DVBWORLD_2004 129 
#define  DM1105_BOARD_UNBRANDED_I2C_ON_GPIO 128 
 int /*<<< orphan*/  DVB_PLL_OPERA1 ; 
 int ENODEV ; 
 int /*<<< orphan*/  GPIO15 ; 
 int /*<<< orphan*/  cx24116_attach ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm1105_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm1105_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm1105_dev*,int /*<<< orphan*/ ) ; 
 void* dm1105_set_voltage ; 
 int /*<<< orphan*/  ds3000_attach ; 
 void* FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int,...) ; 
 int /*<<< orphan*/  dvb_pll_attach ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  dvbworld_ds3000_config ; 
 int /*<<< orphan*/  dvbworld_ts2020_config ; 
 int /*<<< orphan*/  earda_config ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  serit_config ; 
 int /*<<< orphan*/  serit_sp2633_config ; 
 int /*<<< orphan*/  sharp_z0194a_config ; 
 int /*<<< orphan*/  si21xx_attach ; 
 int /*<<< orphan*/  stb6000_attach ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  stv0288_attach ; 
 int /*<<< orphan*/  stv0299_attach ; 
 int /*<<< orphan*/  ts2020_attach ; 

__attribute__((used)) static int FUNC8(struct dm1105_dev *dev)
{
	int ret;

	switch (dev->boardnr) {
	case DM1105_BOARD_UNBRANDED_I2C_ON_GPIO:
		FUNC2(dev, GPIO15, 1);
		FUNC1(dev, GPIO15);
		FUNC6(100);
		FUNC3(dev, GPIO15);
		FUNC6(200);
		dev->fe = FUNC4(
			stv0299_attach, &sharp_z0194a_config,
			dev->i2c_bb_adap);
		if (dev->fe) {
			dev->fe->ops.set_voltage = dm1105_set_voltage;
			FUNC4(dvb_pll_attach, dev->fe, 0x60,
					&dev->i2c_bb_adap, DVB_PLL_OPERA1);
			break;
		}

		dev->fe = FUNC4(
			stv0288_attach, &earda_config,
			dev->i2c_bb_adap);
		if (dev->fe) {
			dev->fe->ops.set_voltage = dm1105_set_voltage;
			FUNC4(stb6000_attach, dev->fe, 0x61,
					&dev->i2c_bb_adap);
			break;
		}

		dev->fe = FUNC4(
			si21xx_attach, &serit_config,
			dev->i2c_bb_adap);
		if (dev->fe)
			dev->fe->ops.set_voltage = dm1105_set_voltage;
		break;
	case DM1105_BOARD_DVBWORLD_2004:
		dev->fe = FUNC4(
			cx24116_attach, &serit_sp2633_config,
			dev->i2c_adap);
		if (dev->fe) {
			dev->fe->ops.set_voltage = dm1105_set_voltage;
			break;
		}

		dev->fe = FUNC4(
			ds3000_attach, &dvbworld_ds3000_config,
			dev->i2c_adap);
		if (dev->fe) {
			FUNC4(ts2020_attach, dev->fe,
				dvbworld_ts2020_config, &dev->i2c_adap);
			dev->fe->ops.set_voltage = dm1105_set_voltage;
		}

		break;
	case DM1105_BOARD_DVBWORLD_2002:
	case DM1105_BOARD_AXESS_DM05:
	default:
		dev->fe = FUNC4(
			stv0299_attach, &sharp_z0194a_config,
			dev->i2c_adap);
		if (dev->fe) {
			dev->fe->ops.set_voltage = dm1105_set_voltage;
			FUNC4(dvb_pll_attach, dev->fe, 0x60,
					&dev->i2c_adap, DVB_PLL_OPERA1);
			break;
		}

		dev->fe = FUNC4(
			stv0288_attach, &earda_config,
			dev->i2c_adap);
		if (dev->fe) {
			dev->fe->ops.set_voltage = dm1105_set_voltage;
			FUNC4(stb6000_attach, dev->fe, 0x61,
					&dev->i2c_adap);
			break;
		}

		dev->fe = FUNC4(
			si21xx_attach, &serit_config,
			dev->i2c_adap);
		if (dev->fe)
			dev->fe->ops.set_voltage = dm1105_set_voltage;

	}

	if (!dev->fe) {
		FUNC0(&dev->pdev->dev, "could not attach frontend\n");
		return -ENODEV;
	}

	ret = FUNC5(&dev->dvb_adapter, dev->fe);
	if (ret < 0) {
		if (dev->fe->ops.release)
			dev->fe->ops.release(dev->fe);
		dev->fe = NULL;
		return ret;
	}

	return 0;
}