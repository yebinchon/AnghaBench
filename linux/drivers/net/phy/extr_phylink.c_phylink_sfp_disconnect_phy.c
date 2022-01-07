
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int phylink_disconnect_phy (void*) ;

__attribute__((used)) static void phylink_sfp_disconnect_phy(void *upstream)
{
 phylink_disconnect_phy(upstream);
}
