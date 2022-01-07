
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ravb_private {int work; } ;
struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int ISS ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int netif_err (struct ravb_private*,int ,struct net_device*,char*,int ) ;
 int ravb_read (struct net_device*,int ) ;
 int schedule_work (int *) ;
 int tx_err ;

__attribute__((used)) static void ravb_tx_timeout(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);

 netif_err(priv, tx_err, ndev,
    "transmit timed out, status %08x, resetting...\n",
    ravb_read(ndev, ISS));


 ndev->stats.tx_errors++;

 schedule_work(&priv->work);
}
