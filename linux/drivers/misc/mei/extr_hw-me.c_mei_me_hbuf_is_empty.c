
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;


 scalar_t__ mei_hbuf_filled_slots (struct mei_device*) ;

__attribute__((used)) static bool mei_me_hbuf_is_empty(struct mei_device *dev)
{
 return mei_hbuf_filled_slots(dev) == 0;
}
