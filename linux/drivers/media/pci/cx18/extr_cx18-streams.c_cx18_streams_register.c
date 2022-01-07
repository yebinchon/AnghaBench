
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int CX18_MAX_STREAMS ;
 int cx18_reg_dev (struct cx18*,int) ;
 int cx18_streams_cleanup (struct cx18*,int) ;

int cx18_streams_register(struct cx18 *cx)
{
 int type;
 int err;
 int ret = 0;


 for (type = 0; type < CX18_MAX_STREAMS; type++) {
  err = cx18_reg_dev(cx, type);
  if (err && ret == 0)
   ret = err;
 }

 if (ret == 0)
  return 0;


 cx18_streams_cleanup(cx, 1);
 return ret;
}
