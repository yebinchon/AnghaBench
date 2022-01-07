
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a; } ;
struct TYPE_4__ {TYPE_1__ fddi_canon_addr; } ;
struct s_smc {TYPE_2__ hw; } ;
struct net_device {int dev_addr; int name; int irq; } ;


 int ETH_ALEN ;
 int IRQF_SHARED ;
 int RX_DISABLE_PROMISC ;
 int STI_FBI () ;
 int init_smt (struct s_smc*,int *) ;
 int mac_clear_multicast (struct s_smc*) ;
 int mac_drv_rx_mode (struct s_smc*,int ) ;
 int memcpy (int ,int ,int ) ;
 struct s_smc* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pr_debug (char*) ;
 int read_address (struct s_smc*,int *) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int skfp_interrupt ;
 int smt_online (struct s_smc*,int) ;

__attribute__((used)) static int skfp_open(struct net_device *dev)
{
 struct s_smc *smc = netdev_priv(dev);
 int err;

 pr_debug("entering skfp_open\n");

 err = request_irq(dev->irq, skfp_interrupt, IRQF_SHARED,
     dev->name, dev);
 if (err)
  return err;
 read_address(smc, ((void*)0));
 memcpy(dev->dev_addr, smc->hw.fddi_canon_addr.a, ETH_ALEN);

 init_smt(smc, ((void*)0));
 smt_online(smc, 1);
 STI_FBI();


 mac_clear_multicast(smc);


 mac_drv_rx_mode(smc, RX_DISABLE_PROMISC);

 netif_start_queue(dev);
 return 0;
}
