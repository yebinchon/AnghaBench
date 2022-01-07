
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_control_block_status {int istatus; } ;


 int CBS_EXCEPTION ;
 int gru_retry_exception (void*) ;
 int rmb () ;

int gru_check_status_proc(void *cb)
{
 struct gru_control_block_status *gen = (void *)cb;
 int ret;

 ret = gen->istatus;
 if (ret == CBS_EXCEPTION)
  ret = gru_retry_exception(cb);
 rmb();
 return ret;

}
