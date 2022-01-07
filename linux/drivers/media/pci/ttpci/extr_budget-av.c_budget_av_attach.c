
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {struct budget_av* ext_priv; } ;
struct TYPE_8__ {struct budget_av* priv; int num; int * proposed_mac; } ;
struct TYPE_10__ {TYPE_2__ dvb_adapter; int i2c_adap; scalar_t__ ci_present; } ;
struct budget_av {int has_saa7113; TYPE_4__ budget; int vd; } ;
struct TYPE_7__ {int vidioc_s_input; int vidioc_g_input; int vidioc_enum_input; } ;
struct TYPE_9__ {TYPE_1__ vid_ops; } ;


 int DD1_INIT ;
 int DD1_STREAM_B ;
 int ENOMEM ;
 int ERR (char*) ;
 int GFP_KERNEL ;
 int MASK_09 ;
 int MASK_10 ;
 int MASK_25 ;
 int MASK_26 ;
 int MC2 ;
 int PCI_BT_V1 ;
 int SAA7146_HPS_SOURCE_PORT_A ;
 int SAA7146_HPS_SYNC_PORT_A ;
 int THIS_MODULE ;
 int VFL_TYPE_GRABBER ;
 int adapter_nr ;
 int ciintf_init (struct budget_av*) ;
 int dprintk (int,char*,struct saa7146_dev*) ;
 int eth_zero_addr (int *) ;
 int frontend_init (struct budget_av*) ;
 scalar_t__ i2c_readregs (int *,int,int,int *,int) ;
 int kfree (struct budget_av*) ;
 struct budget_av* kzalloc (int,int ) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,int *) ;
 scalar_t__ saa7113_init (struct budget_av*) ;
 int saa7113_setinput (struct budget_av*,int ) ;
 int saa7146_register_device (int *,struct saa7146_dev*,char*,int ) ;
 int saa7146_set_hps_source_and_sync (struct saa7146_dev*,int ,int ) ;
 int saa7146_vv_init (struct saa7146_dev*,TYPE_3__*) ;
 int saa7146_vv_release (struct saa7146_dev*) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int ttpci_budget_init (TYPE_4__*,struct saa7146_dev*,struct saa7146_pci_extension_data*,int ,int ) ;
 int ttpci_budget_init_hooks (TYPE_4__*) ;
 int vidioc_enum_input ;
 int vidioc_g_input ;
 int vidioc_s_input ;
 TYPE_3__ vv_data ;

__attribute__((used)) static int budget_av_attach(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
 struct budget_av *budget_av;
 u8 *mac;
 int err;

 dprintk(2, "dev: %p\n", dev);

 if (!(budget_av = kzalloc(sizeof(struct budget_av), GFP_KERNEL)))
  return -ENOMEM;

 budget_av->has_saa7113 = 0;
 budget_av->budget.ci_present = 0;

 dev->ext_priv = budget_av;

 err = ttpci_budget_init(&budget_av->budget, dev, info, THIS_MODULE,
    adapter_nr);
 if (err) {
  kfree(budget_av);
  return err;
 }


 saa7146_write(dev, DD1_STREAM_B, 0x04000000);
 saa7146_write(dev, DD1_INIT, 0x07000600);
 saa7146_write(dev, MC2, MASK_09 | MASK_25 | MASK_10 | MASK_26);

 if (saa7113_init(budget_av) == 0) {
  budget_av->has_saa7113 = 1;
  err = saa7146_vv_init(dev, &vv_data);
  if (err != 0) {

   ERR("cannot init vv subsystem\n");
   return err;
  }
  vv_data.vid_ops.vidioc_enum_input = vidioc_enum_input;
  vv_data.vid_ops.vidioc_g_input = vidioc_g_input;
  vv_data.vid_ops.vidioc_s_input = vidioc_s_input;

  if ((err = saa7146_register_device(&budget_av->vd, dev, "knc1", VFL_TYPE_GRABBER))) {

   ERR("cannot register capture v4l2 device\n");
   saa7146_vv_release(dev);
   return err;
  }


  saa7146_set_hps_source_and_sync(dev, SAA7146_HPS_SOURCE_PORT_A,
      SAA7146_HPS_SYNC_PORT_A);

  saa7113_setinput(budget_av, 0);
 }


 saa7146_write(dev, PCI_BT_V1, 0x1c00101f);

 mac = budget_av->budget.dvb_adapter.proposed_mac;
 if (i2c_readregs(&budget_av->budget.i2c_adap, 0xa0, 0x30, mac, 6)) {
  pr_err("KNC1-%d: Could not read MAC from KNC1 card\n",
         budget_av->budget.dvb_adapter.num);
  eth_zero_addr(mac);
 } else {
  pr_info("KNC1-%d: MAC addr = %pM\n",
   budget_av->budget.dvb_adapter.num, mac);
 }

 budget_av->budget.dvb_adapter.priv = budget_av;
 frontend_init(budget_av);
 ciintf_init(budget_av);

 ttpci_budget_init_hooks(&budget_av->budget);

 return 0;
}
