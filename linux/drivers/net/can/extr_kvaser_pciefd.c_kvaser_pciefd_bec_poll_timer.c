
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct kvaser_pciefd_can {scalar_t__ err_rep_cnt; } ;


 int bec_poll_timer ;
 struct kvaser_pciefd_can* can ;
 struct kvaser_pciefd_can* from_timer (int ,struct timer_list*,int ) ;
 int kvaser_pciefd_enable_err_gen (struct kvaser_pciefd_can*) ;
 int kvaser_pciefd_request_status (struct kvaser_pciefd_can*) ;

__attribute__((used)) static void kvaser_pciefd_bec_poll_timer(struct timer_list *data)
{
 struct kvaser_pciefd_can *can = from_timer(can, data, bec_poll_timer);

 kvaser_pciefd_enable_err_gen(can);
 kvaser_pciefd_request_status(can);
 can->err_rep_cnt = 0;
}
