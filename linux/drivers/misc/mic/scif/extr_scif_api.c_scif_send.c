
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scif_endpt {size_t state; int sendlock; int remote_dev; } ;
typedef scalar_t__ scif_epd_t ;
struct TYPE_3__ {int this_device; } ;
struct TYPE_4__ {TYPE_1__ mdev; } ;


 int ENOTCONN ;
 int SCIF_SEND_BLOCK ;
 int _scif_send (scalar_t__,void*,int,int) ;
 int dev_dbg (int ,char*,struct scif_endpt*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * scif_ep_states ;
 TYPE_2__ scif_info ;
 int scif_msg_param_check (scalar_t__,int,int) ;

int scif_send(scif_epd_t epd, void *msg, int len, int flags)
{
 struct scif_endpt *ep = (struct scif_endpt *)epd;
 int ret;

 dev_dbg(scif_info.mdev.this_device,
  "SCIFAPI send (K): ep %p %s\n", ep, scif_ep_states[ep->state]);
 if (!len)
  return 0;

 ret = scif_msg_param_check(epd, len, flags);
 if (ret)
  return ret;
 if (!ep->remote_dev)
  return -ENOTCONN;






 if (flags & SCIF_SEND_BLOCK)
  mutex_lock(&ep->sendlock);

 ret = _scif_send(epd, msg, len, flags);

 if (flags & SCIF_SEND_BLOCK)
  mutex_unlock(&ep->sendlock);
 return ret;
}
