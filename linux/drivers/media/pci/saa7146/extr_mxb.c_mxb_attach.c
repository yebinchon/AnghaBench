
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int vbi_dev; int video_dev; } ;
struct TYPE_4__ {int vidioc_s_register; int vidioc_g_register; int vidioc_s_audio; int vidioc_g_audio; int vidioc_enumaudio; int vidioc_s_frequency; int vidioc_g_frequency; int vidioc_s_tuner; int vidioc_g_tuner; int vidioc_querystd; int vidioc_s_input; int vidioc_g_input; int vidioc_enum_input; } ;
struct TYPE_5__ {TYPE_1__ vid_ops; } ;


 int DEB_EE (char*,struct saa7146_dev*) ;
 int ERR (char*) ;
 scalar_t__ MXB_BOARD_CAN_DO_VBI (struct saa7146_dev*) ;
 int VFL_TYPE_GRABBER ;
 int VFL_TYPE_VBI ;
 int mxb_init_done (struct saa7146_dev*) ;
 int mxb_num ;
 scalar_t__ mxb_probe (struct saa7146_dev*) ;
 int pr_info (char*,int ) ;
 scalar_t__ saa7146_register_device (int *,struct saa7146_dev*,char*,int ) ;
 int saa7146_vv_init (struct saa7146_dev*,TYPE_2__*) ;
 int saa7146_vv_release (struct saa7146_dev*) ;
 int vidioc_enum_input ;
 int vidioc_enumaudio ;
 int vidioc_g_audio ;
 int vidioc_g_frequency ;
 int vidioc_g_input ;
 int vidioc_g_register ;
 int vidioc_g_tuner ;
 int vidioc_querystd ;
 int vidioc_s_audio ;
 int vidioc_s_frequency ;
 int vidioc_s_input ;
 int vidioc_s_register ;
 int vidioc_s_tuner ;
 TYPE_2__ vv_data ;

__attribute__((used)) static int mxb_attach(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
 struct mxb *mxb;

 DEB_EE("dev:%p\n", dev);

 saa7146_vv_init(dev, &vv_data);
 if (mxb_probe(dev)) {
  saa7146_vv_release(dev);
  return -1;
 }
 mxb = (struct mxb *)dev->ext_priv;

 vv_data.vid_ops.vidioc_enum_input = vidioc_enum_input;
 vv_data.vid_ops.vidioc_g_input = vidioc_g_input;
 vv_data.vid_ops.vidioc_s_input = vidioc_s_input;
 vv_data.vid_ops.vidioc_querystd = vidioc_querystd;
 vv_data.vid_ops.vidioc_g_tuner = vidioc_g_tuner;
 vv_data.vid_ops.vidioc_s_tuner = vidioc_s_tuner;
 vv_data.vid_ops.vidioc_g_frequency = vidioc_g_frequency;
 vv_data.vid_ops.vidioc_s_frequency = vidioc_s_frequency;
 vv_data.vid_ops.vidioc_enumaudio = vidioc_enumaudio;
 vv_data.vid_ops.vidioc_g_audio = vidioc_g_audio;
 vv_data.vid_ops.vidioc_s_audio = vidioc_s_audio;




 if (saa7146_register_device(&mxb->video_dev, dev, "mxb", VFL_TYPE_GRABBER)) {
  ERR("cannot register capture v4l2 device. skipping.\n");
  saa7146_vv_release(dev);
  return -1;
 }


 if (MXB_BOARD_CAN_DO_VBI(dev)) {
  if (saa7146_register_device(&mxb->vbi_dev, dev, "mxb", VFL_TYPE_VBI)) {
   ERR("cannot register vbi v4l2 device. skipping.\n");
  }
 }

 pr_info("found Multimedia eXtension Board #%d\n", mxb_num);

 mxb_num++;
 mxb_init_done(dev);
 return 0;
}
