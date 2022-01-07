
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {scalar_t__ priority; scalar_t__ index; } ;



__attribute__((used)) static bool team_queue_override_port_has_gt_prio_than(struct team_port *port,
            struct team_port *cur)
{
 if (port->priority < cur->priority)
  return 1;
 if (port->priority > cur->priority)
  return 0;
 if (port->index < cur->index)
  return 1;
 return 0;
}
