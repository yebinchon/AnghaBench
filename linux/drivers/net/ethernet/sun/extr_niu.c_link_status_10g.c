
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ loopback_mode; } ;
struct niu {size_t port; int lock; TYPE_2__* parent; TYPE_3__ link_config; } ;
struct TYPE_4__ {int** phy_id; } ;
struct TYPE_5__ {TYPE_1__ phy_probe_info; int port_phy; } ;


 int EINVAL ;
 scalar_t__ LOOPBACK_DISABLED ;
 int NIU_PHY_ID_MASK ;

 int link_status_10g_bcom (struct niu*,int*) ;
 int link_status_10g_mrvl (struct niu*,int*) ;
 int phy_decode (int ,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int link_status_10g(struct niu *np, int *link_up_p)
{
 unsigned long flags;
 int err = -EINVAL;

 spin_lock_irqsave(&np->lock, flags);

 if (np->link_config.loopback_mode == LOOPBACK_DISABLED) {
  int phy_id;

  phy_id = phy_decode(np->parent->port_phy, np->port);
  phy_id = np->parent->phy_probe_info.phy_id[phy_id][np->port];


  switch (phy_id & NIU_PHY_ID_MASK) {
  case 128:
   err = link_status_10g_mrvl(np, link_up_p);
   break;

  default:
   err = link_status_10g_bcom(np, link_up_p);
   break;
  }
 }

 spin_unlock_irqrestore(&np->lock, flags);

 return err;
}
