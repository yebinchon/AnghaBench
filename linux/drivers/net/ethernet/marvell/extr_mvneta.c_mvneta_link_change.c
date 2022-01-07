
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_port {int phylink; } ;


 int MVNETA_GMAC_LINK_UP ;
 int MVNETA_GMAC_STATUS ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int phylink_mac_change (int ,int) ;

__attribute__((used)) static void mvneta_link_change(struct mvneta_port *pp)
{
 u32 gmac_stat = mvreg_read(pp, MVNETA_GMAC_STATUS);

 phylink_mac_change(pp->phylink, !!(gmac_stat & MVNETA_GMAC_LINK_UP));
}
