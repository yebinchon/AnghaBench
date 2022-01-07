
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int check_func; } ;
struct pvr2_dvb_adapter {TYPE_3__ channel; int lock; int buffer_wait_data; } ;
struct pvr2_context {TYPE_2__* hdw; } ;
struct TYPE_6__ {TYPE_1__* hdw_desc; } ;
struct TYPE_5__ {int dvb_props; } ;


 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct pvr2_dvb_adapter* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pvr2_channel_done (TYPE_3__*) ;
 int pvr2_channel_init (TYPE_3__*,struct pvr2_context*) ;
 int pvr2_dvb_adapter_exit (struct pvr2_dvb_adapter*) ;
 int pvr2_dvb_adapter_init (struct pvr2_dvb_adapter*) ;
 int pvr2_dvb_frontend_init (struct pvr2_dvb_adapter*) ;
 int pvr2_dvb_internal_check ;

struct pvr2_dvb_adapter *pvr2_dvb_create(struct pvr2_context *pvr)
{
 int ret = 0;
 struct pvr2_dvb_adapter *adap;
 if (!pvr->hdw->hdw_desc->dvb_props) {


  return ((void*)0);
 }
 adap = kzalloc(sizeof(*adap), GFP_KERNEL);
 if (!adap) return adap;
 pvr2_channel_init(&adap->channel, pvr);
 adap->channel.check_func = pvr2_dvb_internal_check;
 init_waitqueue_head(&adap->buffer_wait_data);
 mutex_init(&adap->lock);
 ret = pvr2_dvb_adapter_init(adap);
 if (ret < 0) goto fail1;
 ret = pvr2_dvb_frontend_init(adap);
 if (ret < 0) goto fail2;
 return adap;

fail2:
 pvr2_dvb_adapter_exit(adap);
fail1:
 pvr2_channel_done(&adap->channel);
 return ((void*)0);
}
