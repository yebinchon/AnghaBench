
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct hexium {scalar_t__ cur_input; int video_dev; } ;
struct TYPE_4__ {int vidioc_s_input; int vidioc_g_input; int vidioc_enum_input; } ;
struct TYPE_5__ {TYPE_1__ vid_ops; } ;


 int DEB_EE (char*) ;
 int VFL_TYPE_GRABBER ;
 int hexium_init_done (struct saa7146_dev*) ;
 int hexium_num ;
 int pr_err (char*,...) ;
 scalar_t__ saa7146_register_device (int *,struct saa7146_dev*,char*,int ) ;
 int saa7146_vv_init (struct saa7146_dev*,TYPE_2__*) ;
 int vidioc_enum_input ;
 int vidioc_g_input ;
 int vidioc_s_input ;
 TYPE_2__ vv_data ;

__attribute__((used)) static int hexium_attach(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
 struct hexium *hexium = (struct hexium *) dev->ext_priv;

 DEB_EE("\n");

 saa7146_vv_init(dev, &vv_data);
 vv_data.vid_ops.vidioc_enum_input = vidioc_enum_input;
 vv_data.vid_ops.vidioc_g_input = vidioc_g_input;
 vv_data.vid_ops.vidioc_s_input = vidioc_s_input;
 if (0 != saa7146_register_device(&hexium->video_dev, dev, "hexium orion", VFL_TYPE_GRABBER)) {
  pr_err("cannot register capture v4l2 device. skipping.\n");
  return -1;
 }

 pr_err("found 'hexium orion' frame grabber-%d\n", hexium_num);
 hexium_num++;


 hexium->cur_input = 0;
 hexium_init_done(dev);

 return 0;
}
