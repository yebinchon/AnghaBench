
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct team_option_inst_info {struct team_port* port; } ;
struct team {int dummy; } ;
struct TYPE_2__ {struct team_option_inst_info* opt_inst_info; } ;
struct lb_port_priv {TYPE_1__ stats_info; } ;


 struct lb_port_priv* get_lb_port_priv (struct team_port*) ;

__attribute__((used)) static int lb_port_stats_init(struct team *team,
         struct team_option_inst_info *info)
{
 struct team_port *port = info->port;
 struct lb_port_priv *lb_port_priv = get_lb_port_priv(port);

 lb_port_priv->stats_info.opt_inst_info = info;
 return 0;
}
