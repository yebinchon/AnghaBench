
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int parent; } ;
struct ab3100 {int startup_events; int startup_events_read; } ;


 int EAGAIN ;
 struct ab3100* dev_get_drvdata (int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int ab3100_event_registers_startup_state_get(struct device *dev,
          u8 *event)
{
 struct ab3100 *ab3100 = dev_get_drvdata(dev->parent);

 if (!ab3100->startup_events_read)
  return -EAGAIN;
 memcpy(event, ab3100->startup_events, 3);

 return 0;
}
