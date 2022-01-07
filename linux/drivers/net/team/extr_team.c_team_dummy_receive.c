
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int rx_handler_result_t ;


 int RX_HANDLER_ANOTHER ;

__attribute__((used)) static rx_handler_result_t team_dummy_receive(struct team *team,
           struct team_port *port,
           struct sk_buff *skb)
{
 return RX_HANDLER_ANOTHER;
}
