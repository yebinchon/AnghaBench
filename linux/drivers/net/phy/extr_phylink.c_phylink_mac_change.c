
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int mac_link_dropped; } ;


 int phylink_dbg (struct phylink*,char*,char*) ;
 int phylink_run_resolve (struct phylink*) ;

void phylink_mac_change(struct phylink *pl, bool up)
{
 if (!up)
  pl->mac_link_dropped = 1;
 phylink_run_resolve(pl);
 phylink_dbg(pl, "mac link %s\n", up ? "up" : "down");
}
