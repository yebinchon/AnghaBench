
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mci_cfg {int dummy; } ;
struct ddb_port {size_t lnr; struct ddb_dvb* dvb; struct ddb* dev; } ;
struct ddb_link {int dummy; } ;
struct ddb_input {int nr; struct ddb_port* port; } ;
struct ddb_dvb {int input; TYPE_2__* fe; int diseqc_send_master_cmd; int set_input; } ;
struct ddb {int dev; struct ddb_link* link; } ;
struct TYPE_3__ {int diseqc_send_burst; int diseqc_send_master_cmd; int set_tone; int enable_high_lnb_voltage; int set_voltage; } ;
struct TYPE_4__ {struct ddb_input* sec_priv; TYPE_1__ ops; } ;



 int EINVAL ;
 int ENODEV ;
 int LNB_CMD_INIT ;
 int SEC_VOLTAGE_OFF ;
 int ddb_lnb_init_fmode (struct ddb*,struct ddb_link*,int) ;
 struct mci_cfg ddb_max_sx8_cfg ;
 TYPE_2__* ddb_mci_attach (struct ddb_input*,struct mci_cfg*,int,int *) ;
 int dev_err (int ,char*) ;
 int fmode ;
 int lnb_command (struct ddb*,size_t,int,int ) ;
 int lnb_set_voltage (struct ddb*,size_t,int,int ) ;
 int max_enable_high_lnb_voltage ;
 int max_send_burst ;
 int max_send_master_cmd ;
 int max_set_tone ;
 int max_set_voltage ;

int ddb_fe_attach_mci(struct ddb_input *input, u32 type)
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
 case 128:
  cfg = ddb_max_sx8_cfg;
  if (fmode == 3)
   tuner = 0;
  break;
 default:
  return -EINVAL;
 }
 dvb->fe = ddb_mci_attach(input, &cfg, demod, &dvb->set_input);
 if (!dvb->fe) {
  dev_err(dev->dev, "No MCI card found!\n");
  return -ENODEV;
 }
 if (!dvb->set_input) {
  dev_err(dev->dev, "No MCI set_input function pointer!\n");
  return -ENODEV;
 }
 if (input->nr < 4) {
  lnb_command(dev, port->lnr, input->nr, LNB_CMD_INIT);
  lnb_set_voltage(dev, port->lnr, input->nr, SEC_VOLTAGE_OFF);
 }
 ddb_lnb_init_fmode(dev, link, fmode);

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
