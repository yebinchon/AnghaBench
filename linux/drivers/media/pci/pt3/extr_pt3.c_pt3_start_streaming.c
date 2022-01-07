
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dvbdev; } ;
struct TYPE_4__ {int num; int device; } ;
struct pt3_adapter {struct task_struct* thread; TYPE_3__ dmxdev; TYPE_1__ dvb_adap; } ;
struct TYPE_5__ {int id; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int dev_warn (int ,char*,int ,int ) ;
 struct task_struct* kthread_run (int ,struct pt3_adapter*,char*,int ,int ) ;
 int pt3_fetch_thread ;
 int pt3_start_dma (struct pt3_adapter*) ;

__attribute__((used)) static int pt3_start_streaming(struct pt3_adapter *adap)
{
 struct task_struct *thread;


 thread = kthread_run(pt3_fetch_thread, adap, "pt3-ad%i-dmx%i",
    adap->dvb_adap.num, adap->dmxdev.dvbdev->id);
 if (IS_ERR(thread)) {
  int ret = PTR_ERR(thread);

  adap->thread = ((void*)0);
  dev_warn(adap->dvb_adap.device,
    "PT3 (adap:%d, dmx:%d): failed to start kthread\n",
    adap->dvb_adap.num, adap->dmxdev.dvbdev->id);
  return ret;
 }
 adap->thread = thread;

 return pt3_start_dma(adap);
}
