
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpts_event {int tmo; } ;


 int jiffies ;
 int time_after (int ,int ) ;

__attribute__((used)) static int event_expired(struct cpts_event *event)
{
 return time_after(jiffies, event->tmo);
}
