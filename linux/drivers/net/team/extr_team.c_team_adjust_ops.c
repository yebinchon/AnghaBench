
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ receive; scalar_t__ transmit; } ;
struct team {TYPE_3__* mode; TYPE_1__ ops; int en_port_count; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {scalar_t__ receive; scalar_t__ transmit; } ;


 scalar_t__ team_dummy_receive ;
 scalar_t__ team_dummy_transmit ;
 int team_is_mode_set (struct team*) ;

__attribute__((used)) static void team_adjust_ops(struct team *team)
{





 if (!team->en_port_count || !team_is_mode_set(team) ||
     !team->mode->ops->transmit)
  team->ops.transmit = team_dummy_transmit;
 else
  team->ops.transmit = team->mode->ops->transmit;

 if (!team->en_port_count || !team_is_mode_set(team) ||
     !team->mode->ops->receive)
  team->ops.receive = team_dummy_receive;
 else
  team->ops.receive = team->mode->ops->receive;
}
