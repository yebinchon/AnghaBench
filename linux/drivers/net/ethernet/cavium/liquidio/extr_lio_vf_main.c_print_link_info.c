
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ duplex; int speed; scalar_t__ link_up; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct oct_link_info {TYPE_2__ link; } ;
struct net_device {int dummy; } ;
struct lio {int netdev; struct oct_link_info linfo; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int LIO_IFSTATE_REGISTERED ;
 int LIO_IFSTATE_RESETTING ;
 scalar_t__ ifstate_check (struct lio*,int ) ;
 int link ;
 int netif_info (struct lio*,int ,int ,char*,...) ;

__attribute__((used)) static void print_link_info(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);

 if (!ifstate_check(lio, LIO_IFSTATE_RESETTING) &&
     ifstate_check(lio, LIO_IFSTATE_REGISTERED)) {
  struct oct_link_info *linfo = &lio->linfo;

  if (linfo->link.s.link_up) {
   netif_info(lio, link, lio->netdev, "%d Mbps %s Duplex UP\n",
       linfo->link.s.speed,
       (linfo->link.s.duplex) ? "Full" : "Half");
  } else {
   netif_info(lio, link, lio->netdev, "Link Down\n");
  }
 }
}
