
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpts {int refclk; int txq; int * clock; } ;


 scalar_t__ WARN_ON (int) ;
 int clk_disable (int ) ;
 int control ;
 int cpts_write32 (struct cpts*,int ,int ) ;
 int int_enable ;
 int ptp_clock_unregister (int *) ;
 int skb_queue_purge (int *) ;

void cpts_unregister(struct cpts *cpts)
{
 if (WARN_ON(!cpts->clock))
  return;

 ptp_clock_unregister(cpts->clock);
 cpts->clock = ((void*)0);

 cpts_write32(cpts, 0, int_enable);
 cpts_write32(cpts, 0, control);


 skb_queue_purge(&cpts->txq);

 clk_disable(cpts->refclk);
}
