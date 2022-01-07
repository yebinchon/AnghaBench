
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; int interface; int pause; int duplex; int speed; } ;
struct phylink {int state_mutex; TYPE_1__ phy_state; } ;
struct phy_device {int duplex; int speed; int interface; scalar_t__ asym_pause; scalar_t__ pause; struct phylink* phylink; } ;


 int MLO_PAUSE_ASYM ;
 int MLO_PAUSE_NONE ;
 int MLO_PAUSE_SYM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_duplex_to_str (int ) ;
 int phy_modes (int ) ;
 int phy_speed_to_str (int ) ;
 int phylink_dbg (struct phylink*,char*,char*,int ,int ,int ) ;
 int phylink_run_resolve (struct phylink*) ;

__attribute__((used)) static void phylink_phy_change(struct phy_device *phydev, bool up,
          bool do_carrier)
{
 struct phylink *pl = phydev->phylink;

 mutex_lock(&pl->state_mutex);
 pl->phy_state.speed = phydev->speed;
 pl->phy_state.duplex = phydev->duplex;
 pl->phy_state.pause = MLO_PAUSE_NONE;
 if (phydev->pause)
  pl->phy_state.pause |= MLO_PAUSE_SYM;
 if (phydev->asym_pause)
  pl->phy_state.pause |= MLO_PAUSE_ASYM;
 pl->phy_state.interface = phydev->interface;
 pl->phy_state.link = up;
 mutex_unlock(&pl->state_mutex);

 phylink_run_resolve(pl);

 phylink_dbg(pl, "phy link %s %s/%s/%s\n", up ? "up" : "down",
      phy_modes(phydev->interface),
      phy_speed_to_str(phydev->speed),
      phy_duplex_to_str(phydev->duplex));
}
