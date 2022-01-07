
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macsec_rxh_data {int secys; } ;
struct macsec_dev {struct net_device* real_dev; } ;
struct list_head {int dummy; } ;


 int kfree (struct macsec_rxh_data*) ;
 scalar_t__ list_empty (int *) ;
 int macsec_common_dellink (struct net_device*,struct list_head*) ;
 struct macsec_rxh_data* macsec_data_rtnl (struct net_device*) ;
 struct macsec_dev* macsec_priv (struct net_device*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;

__attribute__((used)) static void macsec_dellink(struct net_device *dev, struct list_head *head)
{
 struct macsec_dev *macsec = macsec_priv(dev);
 struct net_device *real_dev = macsec->real_dev;
 struct macsec_rxh_data *rxd = macsec_data_rtnl(real_dev);

 macsec_common_dellink(dev, head);

 if (list_empty(&rxd->secys)) {
  netdev_rx_handler_unregister(real_dev);
  kfree(rxd);
 }
}
