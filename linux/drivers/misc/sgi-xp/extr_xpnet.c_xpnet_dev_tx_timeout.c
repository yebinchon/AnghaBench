
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;



__attribute__((used)) static void
xpnet_dev_tx_timeout(struct net_device *dev)
{
 dev->stats.tx_errors++;
}
