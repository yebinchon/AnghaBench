
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpts {int refclk; int ov_check_period; int * clock; int phc_index; int dev; int info; int cc; int tc; int pool; TYPE_1__* pool_data; int events; int txq; } ;
struct TYPE_2__ {int list; } ;


 int CPTS_EN ;
 int CPTS_MAX_EVENTS ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int TS_PEND_EN ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int control ;
 int cpts_write32 (struct cpts*,int ,int ) ;
 int int_enable ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int list_add (int *,int *) ;
 int ptp_clock_index (int *) ;
 int * ptp_clock_register (int *,int ) ;
 int ptp_schedule_worker (int *,int ) ;
 int skb_queue_head_init (int *) ;
 int timecounter_init (int *,int *,int ) ;

int cpts_register(struct cpts *cpts)
{
 int err, i;

 skb_queue_head_init(&cpts->txq);
 INIT_LIST_HEAD(&cpts->events);
 INIT_LIST_HEAD(&cpts->pool);
 for (i = 0; i < CPTS_MAX_EVENTS; i++)
  list_add(&cpts->pool_data[i].list, &cpts->pool);

 clk_enable(cpts->refclk);

 cpts_write32(cpts, CPTS_EN, control);
 cpts_write32(cpts, TS_PEND_EN, int_enable);

 timecounter_init(&cpts->tc, &cpts->cc, ktime_to_ns(ktime_get_real()));

 cpts->clock = ptp_clock_register(&cpts->info, cpts->dev);
 if (IS_ERR(cpts->clock)) {
  err = PTR_ERR(cpts->clock);
  cpts->clock = ((void*)0);
  goto err_ptp;
 }
 cpts->phc_index = ptp_clock_index(cpts->clock);

 ptp_schedule_worker(cpts->clock, cpts->ov_check_period);
 return 0;

err_ptp:
 clk_disable(cpts->refclk);
 return err;
}
