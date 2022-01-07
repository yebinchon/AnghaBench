
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ base_addr; } ;
struct Am79C960 {int RDP; void* RAP; } ;
typedef int multicast_table ;


 void* CSR0 ;
 void* CSR15 ;
 void* CSR8 ;
 int IDON ;
 int IFF_PROMISC ;
 int INEA ;
 int PROM ;
 int STOP ;
 int STRT ;
 int ariadne_init_ring (struct net_device*) ;
 int memset (short*,int,int) ;
 int netdev_mc_count (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int swapw (short) ;

__attribute__((used)) static void set_multicast_list(struct net_device *dev)
{
 volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;

 if (!netif_running(dev))
  return;

 netif_stop_queue(dev);


 lance->RAP = CSR0;
 lance->RDP = STOP;
 ariadne_init_ring(dev);

 if (dev->flags & IFF_PROMISC) {
  lance->RAP = CSR15;
  lance->RDP = PROM;
 } else {
  short multicast_table[4];
  int num_addrs = netdev_mc_count(dev);
  int i;



  memset(multicast_table, (num_addrs == 0) ? 0 : -1,
         sizeof(multicast_table));
  for (i = 0; i < 4; i++) {
   lance->RAP = CSR8 + (i << 8);

   lance->RDP = swapw(multicast_table[i]);
  }
  lance->RAP = CSR15;
  lance->RDP = 0x0000;
 }

 lance->RAP = CSR0;
 lance->RDP = INEA | STRT | IDON;

 netif_wake_queue(dev);
}
