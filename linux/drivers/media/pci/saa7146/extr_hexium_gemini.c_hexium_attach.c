
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {struct hexium* ext_priv; } ;
struct TYPE_9__ {int name; } ;
struct hexium {TYPE_4__ i2c_adapter; int video_dev; scalar_t__ cur_input; int cur_std; } ;
struct TYPE_7__ {int vidioc_s_input; int vidioc_g_input; int vidioc_enum_input; } ;
struct TYPE_8__ {TYPE_1__ vid_ops; } ;


 int DD1_INIT ;
 int DD1_STREAM_B ;
 int DEB_EE (char*) ;
 int DEB_S (char*) ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MASK_08 ;
 int MASK_09 ;
 int MASK_10 ;
 int MASK_24 ;
 int MASK_25 ;
 int MASK_26 ;
 int MC1 ;
 int MC2 ;
 int SAA7146_GPIO_OUTHI ;
 int SAA7146_I2C_BUS_BIT_RATE_480 ;
 int V4L2_STD_PAL ;
 int VFL_TYPE_GRABBER ;
 int hexium_init_done (struct saa7146_dev*) ;
 int hexium_num ;
 int hexium_pal ;
 int hexium_set_input (struct hexium*,int ) ;
 int hexium_set_standard (struct hexium*,int ) ;
 scalar_t__ i2c_add_adapter (TYPE_4__*) ;
 int i2c_del_adapter (TYPE_4__*) ;
 int kfree (struct hexium*) ;
 struct hexium* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;
 int saa7146_i2c_adapter_prepare (struct saa7146_dev*,TYPE_4__*,int ) ;
 int saa7146_register_device (int *,struct saa7146_dev*,char*,int ) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int saa7146_vv_init (struct saa7146_dev*,TYPE_2__*) ;
 int saa7146_vv_release (struct saa7146_dev*) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int strscpy (int ,char*,int) ;
 int vidioc_enum_input ;
 int vidioc_g_input ;
 int vidioc_s_input ;
 TYPE_2__ vv_data ;

__attribute__((used)) static int hexium_attach(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
 struct hexium *hexium;
 int ret;

 DEB_EE("\n");

 hexium = kzalloc(sizeof(*hexium), GFP_KERNEL);
 if (!hexium)
  return -ENOMEM;

 dev->ext_priv = hexium;


 saa7146_write(dev, MC1, (MASK_08 | MASK_24 | MASK_10 | MASK_26));

 strscpy(hexium->i2c_adapter.name, "hexium gemini",
  sizeof(hexium->i2c_adapter.name));
 saa7146_i2c_adapter_prepare(dev, &hexium->i2c_adapter, SAA7146_I2C_BUS_BIT_RATE_480);
 if (i2c_add_adapter(&hexium->i2c_adapter) < 0) {
  DEB_S("cannot register i2c-device. skipping.\n");
  kfree(hexium);
  return -EFAULT;
 }


 saa7146_setgpio(dev, 2, SAA7146_GPIO_OUTHI);

 saa7146_write(dev, DD1_INIT, 0x07000700);
 saa7146_write(dev, DD1_STREAM_B, 0x00000000);
 saa7146_write(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));


 hexium->cur_input = 0;
 hexium_init_done(dev);

 hexium_set_standard(hexium, hexium_pal);
 hexium->cur_std = V4L2_STD_PAL;

 hexium_set_input(hexium, 0);
 hexium->cur_input = 0;

 saa7146_vv_init(dev, &vv_data);

 vv_data.vid_ops.vidioc_enum_input = vidioc_enum_input;
 vv_data.vid_ops.vidioc_g_input = vidioc_g_input;
 vv_data.vid_ops.vidioc_s_input = vidioc_s_input;
 ret = saa7146_register_device(&hexium->video_dev, dev, "hexium gemini", VFL_TYPE_GRABBER);
 if (ret < 0) {
  pr_err("cannot register capture v4l2 device. skipping.\n");
  saa7146_vv_release(dev);
  i2c_del_adapter(&hexium->i2c_adapter);
  kfree(hexium);
  return ret;
 }

 pr_info("found 'hexium gemini' frame grabber-%d\n", hexium_num);
 hexium_num++;

 return 0;
}
