
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uli526x_board_info {int cr6_data; int lock; int ioaddr; } ;
struct net_device {int flags; } ;


 int CR6_PAM ;
 int CR6_PBF ;
 int CR6_PM ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ ULI5261_MAX_MULTICAST ;
 int ULI526X_DBUG (int ,char*,scalar_t__) ;
 scalar_t__ netdev_mc_count (struct net_device*) ;
 struct uli526x_board_info* netdev_priv (struct net_device*) ;
 int send_filter_frame (struct net_device*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_cr6 (int,int ) ;

__attribute__((used)) static void uli526x_set_filter_mode(struct net_device * dev)
{
 struct uli526x_board_info *db = netdev_priv(dev);
 unsigned long flags;

 ULI526X_DBUG(0, "uli526x_set_filter_mode()", 0);
 spin_lock_irqsave(&db->lock, flags);

 if (dev->flags & IFF_PROMISC) {
  ULI526X_DBUG(0, "Enable PROM Mode", 0);
  db->cr6_data |= CR6_PM | CR6_PBF;
  update_cr6(db->cr6_data, db->ioaddr);
  spin_unlock_irqrestore(&db->lock, flags);
  return;
 }

 if (dev->flags & IFF_ALLMULTI ||
     netdev_mc_count(dev) > ULI5261_MAX_MULTICAST) {
  ULI526X_DBUG(0, "Pass all multicast address",
        netdev_mc_count(dev));
  db->cr6_data &= ~(CR6_PM | CR6_PBF);
  db->cr6_data |= CR6_PAM;
  spin_unlock_irqrestore(&db->lock, flags);
  return;
 }

 ULI526X_DBUG(0, "Set multicast address", netdev_mc_count(dev));
 send_filter_frame(dev, netdev_mc_count(dev));
 spin_unlock_irqrestore(&db->lock, flags);
}
