
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {unsigned int cur_input; scalar_t__ cur_audinput; scalar_t__ cur_mute; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int hps_sync; int hps_source; } ;





 int DEB_EE (char*,unsigned int) ;
 int EINVAL ;
 unsigned int MXB_INPUTS ;
 int SAA7111_FMT_CCIR ;
 int SAA7115_COMPOSITE0 ;
 int SAA7115_COMPOSITE1 ;
 int SAA7115_SVIDEO1 ;

 TYPE_1__* input_port_selection ;
 int mxb_update_audmode (struct mxb*) ;
 int pr_err (char*) ;
 int s_routing ;
 scalar_t__ saa7111a_call (struct mxb*,int ,int ,int,int ,int ) ;
 int saa7146_set_hps_source_and_sync (struct saa7146_dev*,int ,int ) ;
 int tea6415c_call (struct mxb*,int ,int ,int,int,int ) ;
 int tea6420_route (struct mxb*,scalar_t__) ;
 int video ;
 scalar_t__* video_audio_connect ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *fh, unsigned int input)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;
 int err = 0;
 int i = 0;

 DEB_EE("VIDIOC_S_INPUT %d\n", input);

 if (input >= MXB_INPUTS)
  return -EINVAL;

 mxb->cur_input = input;

 saa7146_set_hps_source_and_sync(dev, input_port_selection[input].hps_source,
   input_port_selection[input].hps_sync);



 switch (input) {
 case 128:
  i = SAA7115_COMPOSITE0;

  err = tea6415c_call(mxb, video, s_routing, 3, 17, 0);


  if (!err)
   err = tea6415c_call(mxb, video, s_routing, 3, 13, 0);
  break;
 case 129:


  i = SAA7115_SVIDEO1;
  break;
 case 130:


  i = SAA7115_COMPOSITE1;
  break;
 case 131:
  i = SAA7115_COMPOSITE0;
  err = tea6415c_call(mxb, video, s_routing, 1, 17, 0);
  break;
 }

 if (err)
  return err;


 if (saa7111a_call(mxb, video, s_routing, i, SAA7111_FMT_CCIR, 0))
  pr_err("VIDIOC_S_INPUT: could not address saa7111a\n");

 mxb->cur_audinput = video_audio_connect[input];

 if (0 == mxb->cur_mute)
  tea6420_route(mxb, mxb->cur_audinput);
 if (mxb->cur_audinput == 0)
  mxb_update_audmode(mxb);

 return 0;
}
