
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUI ;
 int BNC ;
 int Backplane ;
 int FIBRE ;
 int MII ;
 int TP ;
 int phylink_set (unsigned long*,int ) ;

void phylink_set_port_modes(unsigned long *mask)
{
 phylink_set(mask, TP);
 phylink_set(mask, AUI);
 phylink_set(mask, MII);
 phylink_set(mask, FIBRE);
 phylink_set(mask, BNC);
 phylink_set(mask, Backplane);
}
