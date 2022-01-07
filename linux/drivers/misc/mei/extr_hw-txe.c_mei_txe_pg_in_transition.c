
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {scalar_t__ pg_event; } ;


 scalar_t__ MEI_PG_EVENT_WAIT ;

__attribute__((used)) static bool mei_txe_pg_in_transition(struct mei_device *dev)
{
 return dev->pg_event == MEI_PG_EVENT_WAIT;
}
