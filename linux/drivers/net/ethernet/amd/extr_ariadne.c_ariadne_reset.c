
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;
struct Am79C960 {int RDP; int RAP; } ;


 int CSR0 ;
 int INEA ;
 int STOP ;
 int STRT ;
 int ariadne_init_ring (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static inline void ariadne_reset(struct net_device *dev)
{
 volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;

 lance->RAP = CSR0;
 lance->RDP = STOP;
 ariadne_init_ring(dev);
 lance->RDP = INEA | STRT;
 netif_start_queue(dev);
}
