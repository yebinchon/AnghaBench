
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int flags; int napi; int mac_regs; } ;
struct net_device {int name; int irq; int mtu; } ;


 int IRQF_SHARED ;
 int PCI_D0 ;
 int PCI_D3hot ;
 int VELOCITY_FLAGS_OPENED ;
 int VELOCITY_INIT_COLD ;
 int mac_enable_int (int ) ;
 int napi_enable (int *) ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int velocity_free_rings (struct velocity_info*) ;
 int velocity_give_many_rx_descs (struct velocity_info*) ;
 int velocity_init_registers (struct velocity_info*,int ) ;
 int velocity_init_rings (struct velocity_info*,int ) ;
 int velocity_intr ;
 int velocity_set_power_state (struct velocity_info*,int ) ;

__attribute__((used)) static int velocity_open(struct net_device *dev)
{
 struct velocity_info *vptr = netdev_priv(dev);
 int ret;

 ret = velocity_init_rings(vptr, dev->mtu);
 if (ret < 0)
  goto out;


 velocity_set_power_state(vptr, PCI_D0);

 velocity_init_registers(vptr, VELOCITY_INIT_COLD);

 ret = request_irq(dev->irq, velocity_intr, IRQF_SHARED,
     dev->name, dev);
 if (ret < 0) {

  velocity_set_power_state(vptr, PCI_D3hot);
  velocity_free_rings(vptr);
  goto out;
 }

 velocity_give_many_rx_descs(vptr);

 mac_enable_int(vptr->mac_regs);
 netif_start_queue(dev);
 napi_enable(&vptr->napi);
 vptr->flags |= VELOCITY_FLAGS_OPENED;
out:
 return ret;
}
