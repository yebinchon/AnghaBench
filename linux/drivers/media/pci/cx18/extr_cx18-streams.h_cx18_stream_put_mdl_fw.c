
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {int q_free; } ;
struct cx18_mdl {int dummy; } ;


 int cx18_enqueue (struct cx18_stream*,struct cx18_mdl*,int *) ;
 int cx18_stream_load_fw_queue (struct cx18_stream*) ;

__attribute__((used)) static inline void cx18_stream_put_mdl_fw(struct cx18_stream *s,
       struct cx18_mdl *mdl)
{

 cx18_enqueue(s, mdl, &s->q_free);
 cx18_stream_load_fw_queue(s);
}
