
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv_tuner_status {scalar_t__ ca_application_info; int ca_date_time_request; } ;
struct firedtv {int ca_time_interval; int device; int cadev; int adapter; } ;


 int DVB_DEVICE_CA ;
 int EFAULT ;
 int EINVAL ;
 int avc_ca_get_time_date (struct firedtv*,int *) ;
 scalar_t__ avc_tuner_status (struct firedtv*,struct firedtv_tuner_status*) ;
 int dev_err (int ,char*) ;
 int dvb_register_device (int *,int *,int *,struct firedtv*,int ,int ) ;
 int fdtv_ca ;
 int fdtv_ca_ready (struct firedtv_tuner_status*) ;

int fdtv_ca_register(struct firedtv *fdtv)
{
 struct firedtv_tuner_status stat;
 int err;

 if (avc_tuner_status(fdtv, &stat))
  return -EINVAL;

 if (!fdtv_ca_ready(&stat))
  return -EFAULT;

 err = dvb_register_device(&fdtv->adapter, &fdtv->cadev,
      &fdtv_ca, fdtv, DVB_DEVICE_CA, 0);

 if (stat.ca_application_info == 0)
  dev_err(fdtv->device, "CaApplicationInfo is not set\n");
 if (stat.ca_date_time_request == 1)
  avc_ca_get_time_date(fdtv, &fdtv->ca_time_interval);

 return err;
}
