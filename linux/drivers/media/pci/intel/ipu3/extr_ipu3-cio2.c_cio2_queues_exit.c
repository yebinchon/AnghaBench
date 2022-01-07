
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cio2_device {int * queue; } ;


 unsigned int CIO2_QUEUES ;
 int cio2_queue_exit (struct cio2_device*,int *) ;

__attribute__((used)) static void cio2_queues_exit(struct cio2_device *cio2)
{
 unsigned int i;

 for (i = 0; i < CIO2_QUEUES; i++)
  cio2_queue_exit(cio2, &cio2->queue[i]);
}
