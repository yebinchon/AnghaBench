
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct fm10k_intfc {int flags; TYPE_2__ hw; } ;


 int EINVAL ;
 int FM10K_FLAG_SWPRI_CONFIG ;
 int fm10k_clear_queueing_scheme (struct fm10k_intfc*) ;
 int fm10k_close (struct net_device*) ;
 int fm10k_init_queueing_scheme (struct fm10k_intfc*) ;
 scalar_t__ fm10k_mac_pf ;
 int fm10k_mbx_free_irq (struct fm10k_intfc*) ;
 int fm10k_mbx_request_irq (struct fm10k_intfc*) ;
 int fm10k_open (struct net_device*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int netdev_reset_tc (struct net_device*) ;
 int netdev_set_num_tc (struct net_device*,int) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int set_bit (int ,int ) ;

int fm10k_setup_tc(struct net_device *dev, u8 tc)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 int err;


 if (tc && (interface->hw.mac.type != fm10k_mac_pf))
  return -EINVAL;


 if (tc > 8)
  return -EINVAL;





 if (netif_running(dev))
  fm10k_close(dev);

 fm10k_mbx_free_irq(interface);

 fm10k_clear_queueing_scheme(interface);


 netdev_reset_tc(dev);
 netdev_set_num_tc(dev, tc);

 err = fm10k_init_queueing_scheme(interface);
 if (err)
  goto err_queueing_scheme;

 err = fm10k_mbx_request_irq(interface);
 if (err)
  goto err_mbx_irq;

 err = netif_running(dev) ? fm10k_open(dev) : 0;
 if (err)
  goto err_open;


 set_bit(FM10K_FLAG_SWPRI_CONFIG, interface->flags);

 return 0;
err_open:
 fm10k_mbx_free_irq(interface);
err_mbx_irq:
 fm10k_clear_queueing_scheme(interface);
err_queueing_scheme:
 netif_device_detach(dev);

 return err;
}
