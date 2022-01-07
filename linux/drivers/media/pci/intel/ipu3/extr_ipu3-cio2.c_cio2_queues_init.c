
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cio2_device {int * queue; } ;


 int CIO2_QUEUES ;
 int cio2_queue_exit (struct cio2_device*,int *) ;
 int cio2_queue_init (struct cio2_device*,int *) ;

__attribute__((used)) static int cio2_queues_init(struct cio2_device *cio2)
{
 int i, r;

 for (i = 0; i < CIO2_QUEUES; i++) {
  r = cio2_queue_init(cio2, &cio2->queue[i]);
  if (r)
   break;
 }

 if (i == CIO2_QUEUES)
  return 0;

 for (i--; i >= 0; i--)
  cio2_queue_exit(cio2, &cio2->queue[i]);

 return r;
}
