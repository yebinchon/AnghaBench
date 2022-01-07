
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv_tuner_status {int dummy; } ;
struct firedtv {int device; } ;
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct firedtv* priv; } ;







 int EOPNOTSUPP ;
 int avc_ca_reset (struct firedtv*) ;
 int avc_tuner_status (struct firedtv*,struct firedtv_tuner_status*) ;
 int dev_info (int ,char*,unsigned int) ;
 int fdtv_ca_get_caps (void*) ;
 int fdtv_ca_get_msg (struct firedtv*,void*) ;
 int fdtv_ca_get_slot_info (struct firedtv*,void*) ;
 int fdtv_ca_send_msg (struct firedtv*,void*) ;

__attribute__((used)) static int fdtv_ca_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct dvb_device *dvbdev = file->private_data;
 struct firedtv *fdtv = dvbdev->priv;
 struct firedtv_tuner_status stat;
 int err;

 switch (cmd) {
 case 129:
  err = avc_ca_reset(fdtv);
  break;
 case 132:
  err = fdtv_ca_get_caps(arg);
  break;
 case 130:
  err = fdtv_ca_get_slot_info(fdtv, arg);
  break;
 case 131:
  err = fdtv_ca_get_msg(fdtv, arg);
  break;
 case 128:
  err = fdtv_ca_send_msg(fdtv, arg);
  break;
 default:
  dev_info(fdtv->device, "unhandled CA ioctl %u\n", cmd);
  err = -EOPNOTSUPP;
 }


 avc_tuner_status(fdtv, &stat);

 return err;
}
