
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tracer_string_format {int dummy; } ;
struct TYPE_2__ {int tmsn; } ;
struct tracer_event {TYPE_1__ string_event; int event_id; } ;
struct mlx5_fw_tracer {struct hlist_head* hash; } ;
struct hlist_head {int dummy; } ;


 struct tracer_string_format* mlx5_tracer_message_find (struct hlist_head*,int ,int ) ;
 size_t mlx5_tracer_message_hash (int ) ;

__attribute__((used)) static struct tracer_string_format *mlx5_tracer_message_get(struct mlx5_fw_tracer *tracer,
           struct tracer_event *tracer_event)
{
 struct hlist_head *head =
  &tracer->hash[mlx5_tracer_message_hash(tracer_event->string_event.tmsn)];

 return mlx5_tracer_message_find(head, tracer_event->event_id, tracer_event->string_event.tmsn);
}
