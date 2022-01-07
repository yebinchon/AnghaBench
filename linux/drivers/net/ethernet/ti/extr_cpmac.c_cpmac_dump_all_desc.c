
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cpmac_priv {struct cpmac_desc* rx_head; } ;
struct cpmac_desc {struct cpmac_desc* next; } ;


 int cpmac_dump_desc (struct net_device*,struct cpmac_desc*) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cpmac_dump_all_desc(struct net_device *dev)
{
 struct cpmac_priv *priv = netdev_priv(dev);
 struct cpmac_desc *dump = priv->rx_head;

 do {
  cpmac_dump_desc(dev, dump);
  dump = dump->next;
 } while (dump != priv->rx_head);
}
