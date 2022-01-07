
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int dummy; } ;


 int GFP_KERNEL ;
 int PVR2_TRACE_INIT ;
 struct pvr2_stream* kzalloc (int,int ) ;
 int pvr2_stream_init (struct pvr2_stream*) ;
 int pvr2_trace (int ,char*,struct pvr2_stream*) ;

struct pvr2_stream *pvr2_stream_create(void)
{
 struct pvr2_stream *sp;
 sp = kzalloc(sizeof(*sp), GFP_KERNEL);
 if (!sp) return sp;
 pvr2_trace(PVR2_TRACE_INIT, "pvr2_stream_create: sp=%p", sp);
 pvr2_stream_init(sp);
 return sp;
}
