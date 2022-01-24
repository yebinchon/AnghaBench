#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct tua9001_platform_data {int clock; int inversion; int /*<<< orphan*/  if_port; TYPE_9__* fe; TYPE_9__* dvb_frontend; struct v4l2_subdev* (* get_v4l2_subdev ) (struct i2c_client*) ;} ;
struct si2157_config {int clock; int inversion; int /*<<< orphan*/  if_port; TYPE_9__* fe; TYPE_9__* dvb_frontend; struct v4l2_subdev* (* get_v4l2_subdev ) (struct i2c_client*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk; } ;
struct rtl28xxu_dev {int tuner; struct platform_device* platform_device_sdr; TYPE_3__ rtl2832_platform_data; struct i2c_client* i2c_client_tuner; int /*<<< orphan*/ * demod_i2c_adapter; } ;
struct rtl2832_sdr_platform_data {int addr; int tuner; struct v4l2_subdev* v4l2_subdev; struct dvb_usb_device* dvb_usb_device; TYPE_9__* dvb_frontend; int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk; int /*<<< orphan*/  type; struct tua9001_platform_data* platform_data; } ;
struct TYPE_13__ {int /*<<< orphan*/ * driver; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_11__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {int addr; int tuner; struct v4l2_subdev* v4l2_subdev; struct dvb_usb_device* dvb_usb_device; TYPE_9__* dvb_frontend; int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk; int /*<<< orphan*/  type; struct tua9001_platform_data* platform_data; } ;
struct fc2580_platform_data {int clock; int inversion; int /*<<< orphan*/  if_port; TYPE_9__* fe; TYPE_9__* dvb_frontend; struct v4l2_subdev* (* get_v4l2_subdev ) (struct i2c_client*) ;} ;
struct e4000_config {int clock; int inversion; int /*<<< orphan*/  if_port; TYPE_9__* fe; TYPE_9__* dvb_frontend; struct v4l2_subdev* (* get_v4l2_subdev ) (struct i2c_client*) ;} ;
struct dvb_usb_device {TYPE_5__* intf; int /*<<< orphan*/  i2c_adap; } ;
struct dvb_usb_adapter {TYPE_9__** fe; } ;
struct dvb_tuner_ops {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef  int /*<<< orphan*/  pdata ;
struct TYPE_16__ {int /*<<< orphan*/  get_rf_strength; } ;
struct TYPE_15__ {TYPE_7__ tuner_ops; int /*<<< orphan*/  read_signal_strength; } ;
struct TYPE_17__ {TYPE_6__ ops; int /*<<< orphan*/  tuner_priv; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FC_XTAL_28_8_MHZ ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  SYS_GPIO_DIR ; 
 int /*<<< orphan*/  SYS_GPIO_OUT_EN ; 
#define  TUNER_RTL2832_E4000 135 
#define  TUNER_RTL2832_FC0012 134 
#define  TUNER_RTL2832_FC0013 133 
#define  TUNER_RTL2832_FC2580 132 
#define  TUNER_RTL2832_R820T 131 
#define  TUNER_RTL2832_R828D 130 
#define  TUNER_RTL2832_SI2157 129 
#define  TUNER_RTL2832_TUA9001 128 
 struct dvb_usb_device* FUNC1 (struct dvb_usb_adapter*) ; 
 struct rtl28xxu_dev* FUNC2 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct dvb_frontend* FUNC5 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ *,int,...) ; 
 int /*<<< orphan*/  fc0012_attach ; 
 int /*<<< orphan*/  fc0013_attach ; 
 struct v4l2_subdev* FUNC6 (struct i2c_client*) ; 
 struct i2c_client* FUNC7 (int /*<<< orphan*/ *,struct rtl2832_sdr_platform_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl2832_sdr_platform_data*,int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct rtl2832_sdr_platform_data*,int) ; 
 int /*<<< orphan*/  r820t_attach ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  rtl2832u_fc0012_config ; 
 int /*<<< orphan*/  rtl2832u_r820t_config ; 
 int /*<<< orphan*/  rtl2832u_r828d_config ; 
 int FUNC13 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC15 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct dvb_usb_adapter *adap)
{
	int ret;
	struct dvb_usb_device *d = FUNC1(adap);
	struct rtl28xxu_dev *dev = FUNC2(d);
	struct dvb_frontend *fe = NULL;
	struct i2c_board_info info;
	struct i2c_client *client;
	struct v4l2_subdev *subdev = NULL;
	struct platform_device *pdev;
	struct rtl2832_sdr_platform_data pdata;

	FUNC3(&d->intf->dev, "\n");

	FUNC10(&info, 0, sizeof(struct i2c_board_info));
	FUNC10(&pdata, 0, sizeof(pdata));

	switch (dev->tuner) {
	case TUNER_RTL2832_FC0012:
		fe = FUNC5(fc0012_attach, adap->fe[0],
			dev->demod_i2c_adapter, rtl2832u_fc0012_config);

		/* since fc0012 includs reading the signal strength delegate
		 * that to the tuner driver */
		adap->fe[0]->ops.read_signal_strength =
				adap->fe[0]->ops.tuner_ops.get_rf_strength;
		break;
	case TUNER_RTL2832_FC0013:
		fe = FUNC5(fc0013_attach, adap->fe[0],
			dev->demod_i2c_adapter, 0xc6>>1, 0, FC_XTAL_28_8_MHZ);

		/* fc0013 also supports signal strength reading */
		adap->fe[0]->ops.read_signal_strength =
				adap->fe[0]->ops.tuner_ops.get_rf_strength;
		break;
	case TUNER_RTL2832_E4000: {
			struct e4000_config e4000_config = {
				.fe = adap->fe[0],
				.clock = 28800000,
			};

			FUNC14(info.type, "e4000", I2C_NAME_SIZE);
			info.addr = 0x64;
			info.platform_data = &e4000_config;

			FUNC12(info.type);
			client = FUNC7(dev->demod_i2c_adapter, &info);
			if (client == NULL || client->dev.driver == NULL)
				break;

			if (!FUNC16(client->dev.driver->owner)) {
				FUNC8(client);
				break;
			}

			dev->i2c_client_tuner = client;
			subdev = FUNC6(client);
		}
		break;
	case TUNER_RTL2832_FC2580: {
			struct fc2580_platform_data fc2580_pdata = {
				.dvb_frontend = adap->fe[0],
			};
			struct i2c_board_info board_info = {};

			FUNC14(board_info.type, "fc2580", I2C_NAME_SIZE);
			board_info.addr = 0x56;
			board_info.platform_data = &fc2580_pdata;
			FUNC12("fc2580");
			client = FUNC7(dev->demod_i2c_adapter,
						&board_info);
			if (client == NULL || client->dev.driver == NULL)
				break;
			if (!FUNC16(client->dev.driver->owner)) {
				FUNC8(client);
				break;
			}
			dev->i2c_client_tuner = client;
			subdev = fc2580_pdata.get_v4l2_subdev(client);
		}
		break;
	case TUNER_RTL2832_TUA9001: {
		struct tua9001_platform_data tua9001_pdata = {
			.dvb_frontend = adap->fe[0],
		};
		struct i2c_board_info board_info = {};

		/* enable GPIO1 and GPIO4 as output */
		ret = FUNC13(d, SYS_GPIO_DIR, 0x00, 0x12);
		if (ret)
			goto err;

		ret = FUNC13(d, SYS_GPIO_OUT_EN, 0x12, 0x12);
		if (ret)
			goto err;

		FUNC14(board_info.type, "tua9001", I2C_NAME_SIZE);
		board_info.addr = 0x60;
		board_info.platform_data = &tua9001_pdata;
		FUNC12("tua9001");
		client = FUNC7(dev->demod_i2c_adapter, &board_info);
		if (client == NULL || client->dev.driver == NULL)
			break;
		if (!FUNC16(client->dev.driver->owner)) {
			FUNC8(client);
			break;
		}
		dev->i2c_client_tuner = client;
		break;
	}
	case TUNER_RTL2832_R820T:
		fe = FUNC5(r820t_attach, adap->fe[0],
				dev->demod_i2c_adapter,
				rtl2832u_r820t_config);

		/* Use tuner to get the signal strength */
		adap->fe[0]->ops.read_signal_strength =
				adap->fe[0]->ops.tuner_ops.get_rf_strength;
		break;
	case TUNER_RTL2832_R828D:
		fe = FUNC5(r820t_attach, adap->fe[0],
				dev->demod_i2c_adapter,
				rtl2832u_r828d_config);
		adap->fe[0]->ops.read_signal_strength =
				adap->fe[0]->ops.tuner_ops.get_rf_strength;

		if (adap->fe[1]) {
			fe = FUNC5(r820t_attach, adap->fe[1],
					dev->demod_i2c_adapter,
					rtl2832u_r828d_config);
			adap->fe[1]->ops.read_signal_strength =
					adap->fe[1]->ops.tuner_ops.get_rf_strength;
		}
		break;
	case TUNER_RTL2832_SI2157: {
			struct si2157_config si2157_config = {
				.fe = adap->fe[0],
				.if_port = 0,
				.inversion = false,
			};

			FUNC14(info.type, "si2157", I2C_NAME_SIZE);
			info.addr = 0x60;
			info.platform_data = &si2157_config;
			FUNC12(info.type);
			client = FUNC7(&d->i2c_adap, &info);
			if (client == NULL || client->dev.driver == NULL)
				break;

			if (!FUNC16(client->dev.driver->owner)) {
				FUNC8(client);
				break;
			}

			dev->i2c_client_tuner = client;
			subdev = FUNC6(client);

			/* copy tuner ops for 2nd FE as tuner is shared */
			if (adap->fe[1]) {
				adap->fe[1]->tuner_priv =
						adap->fe[0]->tuner_priv;
				FUNC9(&adap->fe[1]->ops.tuner_ops,
						&adap->fe[0]->ops.tuner_ops,
						sizeof(struct dvb_tuner_ops));
			}
		}
		break;
	default:
		FUNC4(&d->intf->dev, "unknown tuner %d\n", dev->tuner);
	}
	if (fe == NULL && dev->i2c_client_tuner == NULL) {
		ret = -ENODEV;
		goto err;
	}

	/* register SDR */
	switch (dev->tuner) {
	case TUNER_RTL2832_FC2580:
	case TUNER_RTL2832_FC0012:
	case TUNER_RTL2832_FC0013:
	case TUNER_RTL2832_E4000:
	case TUNER_RTL2832_R820T:
	case TUNER_RTL2832_R828D:
		pdata.clk = dev->rtl2832_platform_data.clk;
		pdata.tuner = dev->tuner;
		pdata.regmap = dev->rtl2832_platform_data.regmap;
		pdata.dvb_frontend = adap->fe[0];
		pdata.dvb_usb_device = d;
		pdata.v4l2_subdev = subdev;

		FUNC12("%s", "rtl2832_sdr");
		pdev = FUNC11(&d->intf->dev,
						     "rtl2832_sdr",
						     PLATFORM_DEVID_AUTO,
						     &pdata, sizeof(pdata));
		if (FUNC0(pdev) || pdev->dev.driver == NULL)
			break;
		dev->platform_device_sdr = pdev;
		break;
	default:
		FUNC3(&d->intf->dev, "no SDR for tuner=%d\n", dev->tuner);
	}

	return 0;
err:
	FUNC3(&d->intf->dev, "failed=%d\n", ret);
	return ret;
}