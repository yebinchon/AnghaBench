
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macsec_rxh_data {int secys; } ;
struct macsec_dev {int secys; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct macsec_rxh_data*) ;
 struct macsec_rxh_data* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 struct macsec_rxh_data* macsec_data_rtnl (struct net_device*) ;
 int macsec_handle_frame ;
 struct macsec_dev* macsec_priv (struct net_device*) ;
 int netdev_rx_handler_register (struct net_device*,int ,struct macsec_rxh_data*) ;

__attribute__((used)) static int register_macsec_dev(struct net_device *real_dev,
          struct net_device *dev)
{
 struct macsec_dev *macsec = macsec_priv(dev);
 struct macsec_rxh_data *rxd = macsec_data_rtnl(real_dev);

 if (!rxd) {
  int err;

  rxd = kmalloc(sizeof(*rxd), GFP_KERNEL);
  if (!rxd)
   return -ENOMEM;

  INIT_LIST_HEAD(&rxd->secys);

  err = netdev_rx_handler_register(real_dev, macsec_handle_frame,
       rxd);
  if (err < 0) {
   kfree(rxd);
   return err;
  }
 }

 list_add_tail_rcu(&macsec->secys, &rxd->secys);
 return 0;
}
