
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int IntrRxPCIErr ;
 int IntrRxPCIFault ;
 int IntrTxPCIErr ;
 int IntrTxPCIFault ;
 int netdev_err (struct net_device*,char*,int) ;

__attribute__((used)) static void yellowfin_error(struct net_device *dev, int intr_status)
{
 netdev_err(dev, "Something Wicked happened! %04x\n", intr_status);

 if (intr_status & (IntrTxPCIErr | IntrTxPCIFault))
  dev->stats.tx_errors++;
 if (intr_status & (IntrRxPCIErr | IntrRxPCIFault))
  dev->stats.rx_errors++;
}
