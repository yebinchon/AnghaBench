
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct dmfe_board_info {int cr6_data; scalar_t__ chip_id; int lock; int ioaddr; } ;


 int CR6_PAM ;
 int CR6_PBF ;
 int CR6_PM ;
 int DMFE_DBUG (int ,char*,int) ;
 int DMFE_MAX_MULTICAST ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ PCI_DM9132_ID ;
 int dm9132_id_table (struct net_device*) ;
 int netdev_mc_count (struct net_device*) ;
 struct dmfe_board_info* netdev_priv (struct net_device*) ;
 int send_filter_frame (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_cr6 (int,int ) ;

__attribute__((used)) static void dmfe_set_filter_mode(struct net_device *dev)
{
 struct dmfe_board_info *db = netdev_priv(dev);
 unsigned long flags;
 int mc_count = netdev_mc_count(dev);

 DMFE_DBUG(0, "dmfe_set_filter_mode()", 0);
 spin_lock_irqsave(&db->lock, flags);

 if (dev->flags & IFF_PROMISC) {
  DMFE_DBUG(0, "Enable PROM Mode", 0);
  db->cr6_data |= CR6_PM | CR6_PBF;
  update_cr6(db->cr6_data, db->ioaddr);
  spin_unlock_irqrestore(&db->lock, flags);
  return;
 }

 if (dev->flags & IFF_ALLMULTI || mc_count > DMFE_MAX_MULTICAST) {
  DMFE_DBUG(0, "Pass all multicast address", mc_count);
  db->cr6_data &= ~(CR6_PM | CR6_PBF);
  db->cr6_data |= CR6_PAM;
  spin_unlock_irqrestore(&db->lock, flags);
  return;
 }

 DMFE_DBUG(0, "Set multicast address", mc_count);
 if (db->chip_id == PCI_DM9132_ID)
  dm9132_id_table(dev);
 else
  send_filter_frame(dev);
 spin_unlock_irqrestore(&db->lock, flags);
}
