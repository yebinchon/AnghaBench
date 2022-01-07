
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ wk; int wq; } ;
struct lio {TYPE_2__ txq_status_wq; } ;
struct cavium_wk {scalar_t__ ctxptr; } ;


 int LIO_IFSTATE_RUNNING ;
 int check_txq_status (struct lio*) ;
 int ifstate_check (struct lio*,int ) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void octnet_poll_check_txq_status(struct work_struct *work)
{
 struct cavium_wk *wk = (struct cavium_wk *)work;
 struct lio *lio = (struct lio *)wk->ctxptr;

 if (!ifstate_check(lio, LIO_IFSTATE_RUNNING))
  return;

 check_txq_status(lio);
 queue_delayed_work(lio->txq_status_wq.wq,
      &lio->txq_status_wq.wk.work, msecs_to_jiffies(1));
}
