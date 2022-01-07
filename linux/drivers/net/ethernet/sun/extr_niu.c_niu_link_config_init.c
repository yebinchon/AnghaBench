
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_link_config {int advertising; int autoneg; int loopback_mode; void* active_duplex; int active_speed; void* duplex; int speed; } ;
struct niu {struct niu_link_config link_config; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 void* DUPLEX_FULL ;
 void* DUPLEX_INVALID ;
 int LOOPBACK_DISABLED ;
 int LOOPBACK_MAC ;
 int SPEED_10000 ;
 int SPEED_INVALID ;

__attribute__((used)) static void niu_link_config_init(struct niu *np)
{
 struct niu_link_config *lp = &np->link_config;

 lp->advertising = (ADVERTISED_10baseT_Half |
      ADVERTISED_10baseT_Full |
      ADVERTISED_100baseT_Half |
      ADVERTISED_100baseT_Full |
      ADVERTISED_1000baseT_Half |
      ADVERTISED_1000baseT_Full |
      ADVERTISED_10000baseT_Full |
      ADVERTISED_Autoneg);
 lp->speed = lp->active_speed = SPEED_INVALID;
 lp->duplex = DUPLEX_FULL;
 lp->active_duplex = DUPLEX_INVALID;
 lp->autoneg = 1;





 lp->loopback_mode = LOOPBACK_DISABLED;

}
