
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int phylink; } ;


 int phylink_disconnect_phy (int ) ;

__attribute__((used)) static void mvneta_mdio_remove(struct mvneta_port *pp)
{
 phylink_disconnect_phy(pp->phylink);
}
