
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct enic_rx_coal {int use_adaptive_rx_coalesce; int range_end; int large_pkt_range_start; int small_pkt_range_start; } ;
struct TYPE_5__ {int intr_timer_usec; } ;
struct enic {int rq_count; TYPE_2__ config; TYPE_1__* cq; int vdev; struct enic_rx_coal rx_coalesce_setting; } ;
struct TYPE_6__ {int large_pkt_range_start; int small_pkt_range_start; } ;
struct TYPE_4__ {int cur_rx_coal_timeval; } ;


 int ENIC_LINK_10G_INDEX ;
 int ENIC_LINK_40G_INDEX ;
 int ENIC_LINK_4G_INDEX ;
 unsigned int ENIC_LINK_SPEED_10G ;
 unsigned int ENIC_LINK_SPEED_4G ;
 int ENIC_RX_COALESCE_RANGE_END ;
 TYPE_3__* mod_range ;
 unsigned int vnic_dev_port_speed (int ) ;

__attribute__((used)) static void enic_set_rx_coal_setting(struct enic *enic)
{
 unsigned int speed;
 int index = -1;
 struct enic_rx_coal *rx_coal = &enic->rx_coalesce_setting;





 speed = vnic_dev_port_speed(enic->vdev);
 if (ENIC_LINK_SPEED_10G < speed)
  index = ENIC_LINK_40G_INDEX;
 else if (ENIC_LINK_SPEED_4G < speed)
  index = ENIC_LINK_10G_INDEX;
 else
  index = ENIC_LINK_4G_INDEX;

 rx_coal->small_pkt_range_start = mod_range[index].small_pkt_range_start;
 rx_coal->large_pkt_range_start = mod_range[index].large_pkt_range_start;
 rx_coal->range_end = ENIC_RX_COALESCE_RANGE_END;


 for (index = 0; index < enic->rq_count; index++)
  enic->cq[index].cur_rx_coal_timeval =
    enic->config.intr_timer_usec;

 rx_coal->use_adaptive_rx_coalesce = 1;
}
