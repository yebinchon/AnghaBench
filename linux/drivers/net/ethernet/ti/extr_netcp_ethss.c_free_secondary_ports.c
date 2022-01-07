
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbe_slave {int slave_list; scalar_t__ phy; } ;
struct gbe_priv {scalar_t__ dummy_ndev; int secondary_slaves; } ;


 struct gbe_slave* first_sec_slave (struct gbe_priv*) ;
 int free_netdev (scalar_t__) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int phy_disconnect (scalar_t__) ;

__attribute__((used)) static void free_secondary_ports(struct gbe_priv *gbe_dev)
{
 struct gbe_slave *slave;

 while (!list_empty(&gbe_dev->secondary_slaves)) {
  slave = first_sec_slave(gbe_dev);

  if (slave->phy)
   phy_disconnect(slave->phy);
  list_del(&slave->slave_list);
 }
 if (gbe_dev->dummy_ndev)
  free_netdev(gbe_dev->dummy_ndev);
}
