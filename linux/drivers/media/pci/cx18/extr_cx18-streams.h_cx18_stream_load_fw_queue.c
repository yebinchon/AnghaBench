
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {int out_work_order; } ;


 int schedule_work (int *) ;

__attribute__((used)) static inline void cx18_stream_load_fw_queue(struct cx18_stream *s)
{
 schedule_work(&s->out_work_order);
}
