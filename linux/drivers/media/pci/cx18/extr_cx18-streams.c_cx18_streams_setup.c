
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int * streams; } ;


 int CX18_MAX_STREAMS ;
 int cx18_prep_dev (struct cx18*,int) ;
 int cx18_stream_alloc (int *) ;
 int cx18_streams_cleanup (struct cx18*,int ) ;

int cx18_streams_setup(struct cx18 *cx)
{
 int type, ret;


 for (type = 0; type < CX18_MAX_STREAMS; type++) {

  ret = cx18_prep_dev(cx, type);
  if (ret < 0)
   break;


  ret = cx18_stream_alloc(&cx->streams[type]);
  if (ret < 0)
   break;
 }
 if (type == CX18_MAX_STREAMS)
  return 0;


 cx18_streams_cleanup(cx, 0);
 return ret;
}
