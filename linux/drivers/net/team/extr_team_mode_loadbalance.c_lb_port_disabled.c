
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dummy; } ;
struct team {int dummy; } ;


 int lb_tx_hash_to_port_mapping_null_port (struct team*,struct team_port*) ;

__attribute__((used)) static void lb_port_disabled(struct team *team, struct team_port *port)
{
 lb_tx_hash_to_port_mapping_null_port(team, port);
}
