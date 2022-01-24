#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {struct budget_av* ext_priv; } ;
struct TYPE_8__ {struct budget_av* priv; int /*<<< orphan*/  num; int /*<<< orphan*/ * proposed_mac; } ;
struct TYPE_10__ {TYPE_2__ dvb_adapter; int /*<<< orphan*/  i2c_adap; scalar_t__ ci_present; } ;
struct budget_av {int has_saa7113; TYPE_4__ budget; int /*<<< orphan*/  vd; } ;
struct TYPE_7__ {int /*<<< orphan*/  vidioc_s_input; int /*<<< orphan*/  vidioc_g_input; int /*<<< orphan*/  vidioc_enum_input; } ;
struct TYPE_9__ {TYPE_1__ vid_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD1_INIT ; 
 int /*<<< orphan*/  DD1_STREAM_B ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MASK_09 ; 
 int MASK_10 ; 
 int MASK_25 ; 
 int MASK_26 ; 
 int /*<<< orphan*/  MC2 ; 
 int /*<<< orphan*/  PCI_BT_V1 ; 
 int /*<<< orphan*/  SAA7146_HPS_SOURCE_PORT_A ; 
 int /*<<< orphan*/  SAA7146_HPS_SYNC_PORT_A ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  FUNC1 (struct budget_av*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct budget_av*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct budget_av*) ; 
 struct budget_av* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct budget_av*) ; 
 int /*<<< orphan*/  FUNC11 (struct budget_av*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct saa7146_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct saa7146_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (TYPE_4__*,struct saa7146_dev*,struct saa7146_pci_extension_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  vidioc_enum_input ; 
 int /*<<< orphan*/  vidioc_g_input ; 
 int /*<<< orphan*/  vidioc_s_input ; 
 TYPE_3__ vv_data ; 

__attribute__((used)) static int FUNC19(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
	struct budget_av *budget_av;
	u8 *mac;
	int err;

	FUNC2(2, "dev: %p\n", dev);

	if (!(budget_av = FUNC7(sizeof(struct budget_av), GFP_KERNEL)))
		return -ENOMEM;

	budget_av->has_saa7113 = 0;
	budget_av->budget.ci_present = 0;

	dev->ext_priv = budget_av;

	err = FUNC17(&budget_av->budget, dev, info, THIS_MODULE,
				adapter_nr);
	if (err) {
		FUNC6(budget_av);
		return err;
	}

	/* knc1 initialization */
	FUNC16(dev, DD1_STREAM_B, 0x04000000);
	FUNC16(dev, DD1_INIT, 0x07000600);
	FUNC16(dev, MC2, MASK_09 | MASK_25 | MASK_10 | MASK_26);

	if (FUNC10(budget_av) == 0) {
		budget_av->has_saa7113 = 1;
		err = FUNC14(dev, &vv_data);
		if (err != 0) {
			/* fixme: proper cleanup here */
			FUNC0("cannot init vv subsystem\n");
			return err;
		}
		vv_data.vid_ops.vidioc_enum_input = vidioc_enum_input;
		vv_data.vid_ops.vidioc_g_input = vidioc_g_input;
		vv_data.vid_ops.vidioc_s_input = vidioc_s_input;

		if ((err = FUNC12(&budget_av->vd, dev, "knc1", VFL_TYPE_GRABBER))) {
			/* fixme: proper cleanup here */
			FUNC0("cannot register capture v4l2 device\n");
			FUNC15(dev);
			return err;
		}

		/* beware: this modifies dev->vv ... */
		FUNC13(dev, SAA7146_HPS_SOURCE_PORT_A,
						SAA7146_HPS_SYNC_PORT_A);

		FUNC11(budget_av, 0);
	}

	/* fixme: find some sane values here... */
	FUNC16(dev, PCI_BT_V1, 0x1c00101f);

	mac = budget_av->budget.dvb_adapter.proposed_mac;
	if (FUNC5(&budget_av->budget.i2c_adap, 0xa0, 0x30, mac, 6)) {
		FUNC8("KNC1-%d: Could not read MAC from KNC1 card\n",
		       budget_av->budget.dvb_adapter.num);
		FUNC3(mac);
	} else {
		FUNC9("KNC1-%d: MAC addr = %pM\n",
			budget_av->budget.dvb_adapter.num, mac);
	}

	budget_av->budget.dvb_adapter.priv = budget_av;
	FUNC4(budget_av);
	FUNC1(budget_av);

	FUNC18(&budget_av->budget);

	return 0;
}