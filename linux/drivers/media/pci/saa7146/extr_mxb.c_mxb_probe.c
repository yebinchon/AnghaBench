
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct saa7146_dev {struct mxb* ext_priv; int v4l2_dev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_5__ {int name; } ;
struct mxb {TYPE_1__ i2c_adapter; void* tuner; void* saa7111a; void* tda9840; void* tea6415c; void* tea6420_2; void* tea6420_1; } ;


 int DEB_D (char*) ;
 int DEB_S (char*) ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_SAA7111A ;
 int I2C_TDA9840 ;
 int I2C_TEA6415C ;
 int I2C_TEA6420_1 ;
 int I2C_TEA6420_2 ;
 int I2C_TUNER ;
 int SAA7146_I2C_BUS_BIT_RATE_480 ;
 int V4L2_CID_AUDIO_MUTE ;
 scalar_t__ i2c_add_adapter (TYPE_1__*) ;
 int i2c_del_adapter (TYPE_1__*) ;
 int kfree (struct mxb*) ;
 struct mxb* kzalloc (int,int ) ;
 int mxb_ctrl_ops ;
 int mxb_num ;
 int pr_err (char*) ;
 int saa7146_i2c_adapter_prepare (struct saa7146_dev*,TYPE_1__*,int ) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 void* v4l2_i2c_new_subdev (int *,TYPE_1__*,char*,int ,int *) ;

__attribute__((used)) static int mxb_probe(struct saa7146_dev *dev)
{
 struct v4l2_ctrl_handler *hdl = &dev->ctrl_handler;
 struct mxb *mxb = ((void*)0);

 v4l2_ctrl_new_std(hdl, &mxb_ctrl_ops,
   V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
 if (hdl->error)
  return hdl->error;
 mxb = kzalloc(sizeof(struct mxb), GFP_KERNEL);
 if (mxb == ((void*)0)) {
  DEB_D("not enough kernel memory\n");
  return -ENOMEM;
 }


 snprintf(mxb->i2c_adapter.name, sizeof(mxb->i2c_adapter.name), "mxb%d", mxb_num);

 saa7146_i2c_adapter_prepare(dev, &mxb->i2c_adapter, SAA7146_I2C_BUS_BIT_RATE_480);
 if (i2c_add_adapter(&mxb->i2c_adapter) < 0) {
  DEB_S("cannot register i2c-device. skipping.\n");
  kfree(mxb);
  return -EFAULT;
 }

 mxb->saa7111a = v4l2_i2c_new_subdev(&dev->v4l2_dev, &mxb->i2c_adapter,
   "saa7111", I2C_SAA7111A, ((void*)0));
 mxb->tea6420_1 = v4l2_i2c_new_subdev(&dev->v4l2_dev, &mxb->i2c_adapter,
   "tea6420", I2C_TEA6420_1, ((void*)0));
 mxb->tea6420_2 = v4l2_i2c_new_subdev(&dev->v4l2_dev, &mxb->i2c_adapter,
   "tea6420", I2C_TEA6420_2, ((void*)0));
 mxb->tea6415c = v4l2_i2c_new_subdev(&dev->v4l2_dev, &mxb->i2c_adapter,
   "tea6415c", I2C_TEA6415C, ((void*)0));
 mxb->tda9840 = v4l2_i2c_new_subdev(&dev->v4l2_dev, &mxb->i2c_adapter,
   "tda9840", I2C_TDA9840, ((void*)0));
 mxb->tuner = v4l2_i2c_new_subdev(&dev->v4l2_dev, &mxb->i2c_adapter,
   "tuner", I2C_TUNER, ((void*)0));


 if (!mxb->tea6420_1 || !mxb->tea6420_2 || !mxb->tea6415c ||
     !mxb->tda9840 || !mxb->saa7111a || !mxb->tuner) {
  pr_err("did not find all i2c devices. aborting\n");
  i2c_del_adapter(&mxb->i2c_adapter);
  kfree(mxb);
  return -ENODEV;
 }




 dev->ext_priv = mxb;

 v4l2_ctrl_handler_setup(hdl);

 return 0;
}
