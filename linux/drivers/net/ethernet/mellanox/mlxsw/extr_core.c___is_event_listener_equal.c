
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_event_listener {scalar_t__ func; scalar_t__ trap_id; } ;



__attribute__((used)) static bool __is_event_listener_equal(const struct mlxsw_event_listener *el_a,
          const struct mlxsw_event_listener *el_b)
{
 return (el_a->func == el_b->func &&
  el_a->trap_id == el_b->trap_id);
}
