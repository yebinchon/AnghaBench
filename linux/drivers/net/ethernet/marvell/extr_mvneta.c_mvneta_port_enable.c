
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_port {int dummy; } ;


 int MVNETA_GMAC0_PORT_ENABLE ;
 int MVNETA_GMAC_CTRL_0 ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_port_enable(struct mvneta_port *pp)
{
 u32 val;


 val = mvreg_read(pp, MVNETA_GMAC_CTRL_0);
 val |= MVNETA_GMAC0_PORT_ENABLE;
 mvreg_write(pp, MVNETA_GMAC_CTRL_0, val);
}
