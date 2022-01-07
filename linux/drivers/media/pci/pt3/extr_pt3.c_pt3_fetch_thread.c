
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct pt3_adapter {TYPE_1__* thread; TYPE_2__ dvb_adap; void* num_discard; } ;
typedef int ktime_t ;
struct TYPE_3__ {int comm; } ;


 int HRTIMER_MODE_REL ;
 int NSEC_PER_MSEC ;
 int PT3_FETCH_DELAY ;
 int PT3_FETCH_DELAY_DELTA ;
 void* PT3_INITIAL_BUF_DROPS ;
 int TASK_UNINTERRUPTIBLE ;
 int dev_dbg (int ,char*,int ) ;
 int freezable_schedule_hrtimeout_range (int *,int,int ) ;
 int kthread_freezable_should_stop (int*) ;
 int ktime_set (int ,int) ;
 int pt3_init_dmabuf (struct pt3_adapter*) ;
 int pt3_proc_dma (struct pt3_adapter*) ;
 int set_current_state (int ) ;
 int set_freezable () ;

__attribute__((used)) static int pt3_fetch_thread(void *data)
{
 struct pt3_adapter *adap = data;
 ktime_t delay;
 bool was_frozen;





 pt3_init_dmabuf(adap);
 adap->num_discard = 4;

 dev_dbg(adap->dvb_adap.device, "PT3: [%s] started\n",
  adap->thread->comm);
 set_freezable();
 while (!kthread_freezable_should_stop(&was_frozen)) {
  if (was_frozen)
   adap->num_discard = 4;

  pt3_proc_dma(adap);

  delay = ktime_set(0, 10 * NSEC_PER_MSEC);
  set_current_state(TASK_UNINTERRUPTIBLE);
  freezable_schedule_hrtimeout_range(&delay,
     2 * NSEC_PER_MSEC,
     HRTIMER_MODE_REL);
 }
 dev_dbg(adap->dvb_adap.device, "PT3: [%s] exited\n",
  adap->thread->comm);
 return 0;
}
