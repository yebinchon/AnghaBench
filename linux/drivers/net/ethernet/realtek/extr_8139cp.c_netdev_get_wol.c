
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ethtool_wolinfo {int wolopts; int supported; } ;
struct cp_private {int wol_enabled; } ;


 int BWF ;
 int Config3 ;
 int Config5 ;
 int LinkUp ;
 int MWF ;
 int MagicPacket ;
 int UWF ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int cpr8 (int ) ;

__attribute__((used)) static void netdev_get_wol (struct cp_private *cp,
              struct ethtool_wolinfo *wol)
{
 u8 options;

 wol->wolopts = 0;
 wol->supported = WAKE_PHY | WAKE_BCAST | WAKE_MAGIC |
           WAKE_MCAST | WAKE_UCAST;

 if (!cp->wol_enabled) return;

 options = cpr8 (Config3);
 if (options & LinkUp) wol->wolopts |= WAKE_PHY;
 if (options & MagicPacket) wol->wolopts |= WAKE_MAGIC;

 options = 0;
 options = cpr8 (Config5);
 if (options & UWF) wol->wolopts |= WAKE_UCAST;
 if (options & BWF) wol->wolopts |= WAKE_BCAST;
 if (options & MWF) wol->wolopts |= WAKE_MCAST;
}
