
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int * raw; } ;


 int kfree (int *) ;

void ir_raw_event_free(struct rc_dev *dev)
{
 if (!dev)
  return;

 kfree(dev->raw);
 dev->raw = ((void*)0);
}
