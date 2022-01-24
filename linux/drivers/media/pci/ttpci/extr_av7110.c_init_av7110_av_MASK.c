#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct saa7146_dev {TYPE_2__* pci; } ;
struct TYPE_6__ {int /*<<< orphan*/  volume_right; int /*<<< orphan*/  volume_left; } ;
struct TYPE_4__ {int num; } ;
struct av7110 {int display_panscan; TYPE_3__ mixer; struct saa7146_dev* dev; int /*<<< orphan*/  adac_type; TYPE_1__ dvb_adapter; scalar_t__ current_input; scalar_t__ analog_tuner_flags; scalar_t__ display_ar; } ;
struct TYPE_5__ {int subsystem_vendor; int subsystem_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADSwitch ; 
 int /*<<< orphan*/  COMTYPE_AUDIODAC ; 
 int /*<<< orphan*/  COMTYPE_ENCODER ; 
 int /*<<< orphan*/  DVB_ADAC_CRYSTAL ; 
 int /*<<< orphan*/  DVB_ADAC_MSP34x0 ; 
 int /*<<< orphan*/  DVB_ADAC_NONE ; 
 int /*<<< orphan*/  DVB_ADAC_TI ; 
 int /*<<< orphan*/  MainSwitch ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  SetMonitorType ; 
 int /*<<< orphan*/  SetPanScanType ; 
 int /*<<< orphan*/  SetWSSConfig ; 
 int /*<<< orphan*/  SpdifSwitch ; 
 int /*<<< orphan*/  adac ; 
 int FUNC0 (struct av7110*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,...) ; 
 scalar_t__ FUNC1 (struct av7110*) ; 
 int FUNC2 (struct av7110*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct av7110*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct av7110*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ rgb_on ; 
 int /*<<< orphan*/  FUNC6 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vidmode ; 
 int /*<<< orphan*/  wss_cfg_16_9 ; 
 int /*<<< orphan*/  wss_cfg_4_3 ; 

__attribute__((used)) static void FUNC7(struct av7110 *av7110)
{
	int ret;
	struct saa7146_dev *dev = av7110->dev;

	/* set internal volume control to maximum */
	av7110->adac_type = DVB_ADAC_TI;
	ret = FUNC2(av7110, av7110->mixer.volume_left, av7110->mixer.volume_right);
	if (ret < 0)
		FUNC5("dvb-ttpci:cannot set internal volume to maximum:%d\n",ret);

	ret = FUNC0(av7110, COMTYPE_ENCODER, SetMonitorType,
			    1, (u16) av7110->display_ar);
	if (ret < 0)
		FUNC5("dvb-ttpci: unable to set aspect ratio\n");
	ret = FUNC0(av7110, COMTYPE_ENCODER, SetPanScanType,
			    1, av7110->display_panscan);
	if (ret < 0)
		FUNC5("dvb-ttpci: unable to set pan scan\n");

	ret = FUNC0(av7110, COMTYPE_ENCODER, SetWSSConfig, 2, 2, wss_cfg_4_3);
	if (ret < 0)
		FUNC5("dvb-ttpci: unable to configure 4:3 wss\n");
	ret = FUNC0(av7110, COMTYPE_ENCODER, SetWSSConfig, 2, 3, wss_cfg_16_9);
	if (ret < 0)
		FUNC5("dvb-ttpci: unable to configure 16:9 wss\n");

	ret = FUNC3(av7110, vidmode);
	if (ret < 0)
		FUNC5("dvb-ttpci:cannot set video mode:%d\n",ret);

	/* handle different card types */
	/* remaining inits according to card and frontend type */
	av7110->analog_tuner_flags = 0;
	av7110->current_input = 0;
	if (dev->pci->subsystem_vendor == 0x13c2 && dev->pci->subsystem_device == 0x000a)
		FUNC0(av7110, COMTYPE_AUDIODAC, ADSwitch, 1, 0); // SPDIF on
	if (FUNC4(av7110, 0x20, 0x00, 0x00) == 1) {
		FUNC5 ("dvb-ttpci: Crystal audio DAC @ card %d detected\n",
			av7110->dvb_adapter.num);
		av7110->adac_type = DVB_ADAC_CRYSTAL;
		FUNC4(av7110, 0x20, 0x01, 0xd2);
		FUNC4(av7110, 0x20, 0x02, 0x49);
		FUNC4(av7110, 0x20, 0x03, 0x00);
		FUNC4(av7110, 0x20, 0x04, 0x00);

		/**
		 * some special handling for the Siemens DVB-C cards...
		 */
	} else if (0 == FUNC1(av7110)) {
		/* done. */
	}
	else if (dev->pci->subsystem_vendor == 0x110a) {
		FUNC5("dvb-ttpci: DVB-C w/o analog module @ card %d detected\n",
			av7110->dvb_adapter.num);
		av7110->adac_type = DVB_ADAC_NONE;
	}
	else {
		av7110->adac_type = adac;
		FUNC5("dvb-ttpci: adac type set to %d @ card %d\n",
			av7110->adac_type, av7110->dvb_adapter.num);
	}

	if (av7110->adac_type == DVB_ADAC_NONE || av7110->adac_type == DVB_ADAC_MSP34x0) {
		// switch DVB SCART on
		ret = FUNC0(av7110, COMTYPE_AUDIODAC, MainSwitch, 1, 0);
		if (ret < 0)
			FUNC5("dvb-ttpci:cannot switch on SCART(Main):%d\n",ret);
		ret = FUNC0(av7110, COMTYPE_AUDIODAC, ADSwitch, 1, 1);
		if (ret < 0)
			FUNC5("dvb-ttpci:cannot switch on SCART(AD):%d\n",ret);
		if (rgb_on &&
		    ((av7110->dev->pci->subsystem_vendor == 0x110a) ||
		     (av7110->dev->pci->subsystem_vendor == 0x13c2)) &&
		     (av7110->dev->pci->subsystem_device == 0x0000)) {
			FUNC6(dev, 1, SAA7146_GPIO_OUTHI); // RGB on, SCART pin 16
			//saa7146_setgpio(dev, 3, SAA7146_GPIO_OUTLO); // SCARTpin 8
		}
	}

	if (dev->pci->subsystem_vendor == 0x13c2 && dev->pci->subsystem_device == 0x000e)
		FUNC0(av7110, COMTYPE_AUDIODAC, SpdifSwitch, 1, 0); // SPDIF on

	ret = FUNC2(av7110, av7110->mixer.volume_left, av7110->mixer.volume_right);
	if (ret < 0)
		FUNC5("dvb-ttpci:cannot set volume :%d\n",ret);
}