
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct r592_device {int host; } ;


 int detect_timer ;
 struct r592_device* dev ;
 struct r592_device* from_timer (int ,struct timer_list*,int ) ;
 int memstick_detect_change (int ) ;
 int r592_update_card_detect (struct r592_device*) ;

__attribute__((used)) static void r592_detect_timer(struct timer_list *t)
{
 struct r592_device *dev = from_timer(dev, t, detect_timer);
 r592_update_card_detect(dev);
 memstick_detect_change(dev->host);
}
