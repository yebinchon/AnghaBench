
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int linkpoll_period; int stats_update_period; } ;
struct adapter {int adap_check_task; TYPE_1__ params; } ;


 int HZ ;
 int cxgb3_wq ;
 int queue_delayed_work (int ,int *,unsigned int) ;

__attribute__((used)) static void schedule_chk_task(struct adapter *adap)
{
 unsigned int timeo;

 timeo = adap->params.linkpoll_period ?
     (HZ * adap->params.linkpoll_period) / 10 :
     adap->params.stats_update_period * HZ;
 if (timeo)
  queue_delayed_work(cxgb3_wq, &adap->adap_check_task, timeo);
}
