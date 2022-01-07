
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int dummy; } ;


 unsigned long REMOTE_QUEUE_SIZE ;
 int set_queue_reader (struct service_processor*,unsigned long) ;

__attribute__((used)) static inline int advance_queue_reader(struct service_processor *sp, unsigned long reader)
{
 reader++;
 if (reader == REMOTE_QUEUE_SIZE)
  reader = 0;

 set_queue_reader(sp, reader);
 return reader;
}
