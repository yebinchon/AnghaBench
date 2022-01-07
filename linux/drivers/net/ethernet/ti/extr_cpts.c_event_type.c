
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpts_event {int high; } ;


 int EVENT_TYPE_MASK ;
 int EVENT_TYPE_SHIFT ;

__attribute__((used)) static int event_type(struct cpts_event *event)
{
 return (event->high >> EVENT_TYPE_SHIFT) & EVENT_TYPE_MASK;
}
