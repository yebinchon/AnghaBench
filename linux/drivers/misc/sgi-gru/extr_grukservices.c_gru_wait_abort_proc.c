
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gru_abort (int,void*,char*) ;
 int gru_wait_proc (void*) ;

void gru_wait_abort_proc(void *cb)
{
 int ret;

 ret = gru_wait_proc(cb);
 if (ret)
  gru_abort(ret, cb, "gru_wait_abort");
}
