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
typedef  int u32 ;
struct mci_cfg {int dummy; } ;
struct ddb_port {size_t lnr; struct ddb_dvb* dvb; struct ddb* dev; } ;
struct ddb_link {int dummy; } ;
struct ddb_input {int nr; struct ddb_port* port; } ;
struct ddb_dvb {int input; TYPE_2__* fe; int /*<<< orphan*/  diseqc_send_master_cmd; int /*<<< orphan*/  set_input; } ;
struct ddb {int /*<<< orphan*/  dev; struct ddb_link* link; } ;
struct TYPE_3__ {int /*<<< orphan*/  diseqc_send_burst; int /*<<< orphan*/  diseqc_send_master_cmd; int /*<<< orphan*/  set_tone; int /*<<< orphan*/  enable_high_lnb_voltage; int /*<<< orphan*/  set_voltage; } ;
struct TYPE_4__ {struct ddb_input* sec_priv; TYPE_1__ ops; } ;

/* Variables and functions */
#define  DDB_TUNER_MCI_SX8 128 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  LNB_CMD_INIT ; 
 int /*<<< orphan*/  SEC_VOLTAGE_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct ddb*,struct ddb_link*,int) ; 
 struct mci_cfg ddb_max_sx8_cfg ; 
 TYPE_2__* FUNC1 (struct ddb_input*,struct mci_cfg*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int fmode ; 
 int /*<<< orphan*/  FUNC3 (struct ddb*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_enable_high_lnb_voltage ; 
 int /*<<< orphan*/  max_send_burst ; 
 int /*<<< orphan*/  max_send_master_cmd ; 
 int /*<<< orphan*/  max_set_tone ; 
 int /*<<< orphan*/  max_set_voltage ; 

int FUNC5(struct ddb_input *input, u32 type)
{
	struct ddb *dev = input->port->dev;
	struct ddb_dvb *dvb = &input->port->dvb[input->nr & 1];
	struct ddb_port *port = input->port;
	struct ddb_link *link = &dev->link[port->lnr];
	int demod, tuner;
	struct mci_cfg cfg;

	demod = input->nr;
	tuner = demod & 3;
	switch (type) {
	case DDB_TUNER_MCI_SX8:
		cfg = ddb_max_sx8_cfg;
		if (fmode == 3)
			tuner = 0;
		break;
	default:
		return -EINVAL;
	}
	dvb->fe = FUNC1(input, &cfg, demod, &dvb->set_input);
	if (!dvb->fe) {
		FUNC2(dev->dev, "No MCI card found!\n");
		return -ENODEV;
	}
	if (!dvb->set_input) {
		FUNC2(dev->dev, "No MCI set_input function pointer!\n");
		return -ENODEV;
	}
	if (input->nr < 4) {
		FUNC3(dev, port->lnr, input->nr, LNB_CMD_INIT);
		FUNC4(dev, port->lnr, input->nr, SEC_VOLTAGE_OFF);
	}
	FUNC0(dev, link, fmode);

	dvb->fe->ops.set_voltage = max_set_voltage;
	dvb->fe->ops.enable_high_lnb_voltage = max_enable_high_lnb_voltage;
	dvb->fe->ops.set_tone = max_set_tone;
	dvb->diseqc_send_master_cmd = dvb->fe->ops.diseqc_send_master_cmd;
	dvb->fe->ops.diseqc_send_master_cmd = max_send_master_cmd;
	dvb->fe->ops.diseqc_send_burst = max_send_burst;
	dvb->fe->sec_priv = input;
	dvb->input = tuner;
	return 0;
}