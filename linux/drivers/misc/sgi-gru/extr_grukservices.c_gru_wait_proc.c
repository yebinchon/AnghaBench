
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_control_block_status {int dummy; } ;


 int CBS_EXCEPTION ;
 int gru_retry_exception (void*) ;
 int gru_wait_idle_or_exception (struct gru_control_block_status*) ;
 int rmb () ;

int gru_wait_proc(void *cb)
{
 struct gru_control_block_status *gen = (void *)cb;
 int ret;

 ret = gru_wait_idle_or_exception(gen);
 if (ret == CBS_EXCEPTION)
  ret = gru_retry_exception(cb);
 rmb();
 return ret;
}
