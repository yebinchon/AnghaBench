
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_missed_errors; } ;
struct net_device {struct net_device_stats stats; scalar_t__ base_addr; } ;
struct Am79C960 {short RAP; int RDP; } ;


 short CSR112 ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int swapw (int ) ;

__attribute__((used)) static struct net_device_stats *ariadne_get_stats(struct net_device *dev)
{
 volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;
 short saved_addr;
 unsigned long flags;

 local_irq_save(flags);
 saved_addr = lance->RAP;
 lance->RAP = CSR112;
 dev->stats.rx_missed_errors = swapw(lance->RDP);
 lance->RAP = saved_addr;
 local_irq_restore(flags);

 return &dev->stats;
}
