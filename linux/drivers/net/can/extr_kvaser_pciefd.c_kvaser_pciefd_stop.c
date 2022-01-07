
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct kvaser_pciefd_can {int bec_poll_timer; scalar_t__ reg_base; TYPE_1__ can; int flush_comp; } ;


 int ETIMEDOUT ;
 scalar_t__ KVASER_PCIEFD_KCAN_IEN_REG ;
 int KVASER_PCIEFD_WAIT_TIMEOUT ;
 int close_candev (struct net_device*) ;
 int completion_done (int *) ;
 int del_timer (int *) ;
 int iowrite32 (int ,scalar_t__) ;
 int kvaser_pciefd_start_controller_flush (struct kvaser_pciefd_can*) ;
 int netdev_err (int ,char*) ;
 struct kvaser_pciefd_can* netdev_priv (struct net_device*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int kvaser_pciefd_stop(struct net_device *netdev)
{
 struct kvaser_pciefd_can *can = netdev_priv(netdev);
 int ret = 0;


 if (!completion_done(&can->flush_comp))
  kvaser_pciefd_start_controller_flush(can);

 if (!wait_for_completion_timeout(&can->flush_comp,
      KVASER_PCIEFD_WAIT_TIMEOUT)) {
  netdev_err(can->can.dev, "Timeout during stop\n");
  ret = -ETIMEDOUT;
 } else {
  iowrite32(0, can->reg_base + KVASER_PCIEFD_KCAN_IEN_REG);
  del_timer(&can->bec_poll_timer);
 }
 close_candev(netdev);

 return ret;
}
