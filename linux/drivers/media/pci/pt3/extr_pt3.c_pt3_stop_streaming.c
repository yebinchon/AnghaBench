
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int device; } ;
struct pt3_adapter {int * thread; TYPE_2__* fe; TYPE_1__ dvb_adap; } ;
struct TYPE_4__ {int id; } ;


 int dev_warn (int ,char*,int ,int ) ;
 int kthread_stop (int *) ;
 int pt3_stop_dma (struct pt3_adapter*) ;

__attribute__((used)) static int pt3_stop_streaming(struct pt3_adapter *adap)
{
 int ret;

 ret = pt3_stop_dma(adap);
 if (ret)
  dev_warn(adap->dvb_adap.device,
    "PT3: failed to stop streaming of adap:%d/FE:%d\n",
    adap->dvb_adap.num, adap->fe->id);


 ret = kthread_stop(adap->thread);
 adap->thread = ((void*)0);
 return ret;
}
