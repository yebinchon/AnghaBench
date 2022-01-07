
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct altera_tse_private {int mac_dev; } ;


 int csrwr32 (int,int ,scalar_t__) ;
 int hash_table ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 scalar_t__ tse_csroffs (int ) ;

__attribute__((used)) static void altera_tse_set_mcfilterall(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 int i;


 for (i = 0; i < 64; i++)
  csrwr32(1, priv->mac_dev, tse_csroffs(hash_table) + i * 4);
}
