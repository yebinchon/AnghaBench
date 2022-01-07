
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_port {int dummy; } ;


 int MVNETA_FORCE_UNI ;
 int MVNETA_MAC_ADDR_HIGH ;
 int MVNETA_MAC_ADDR_LOW ;
 int MVNETA_PORT_CONFIG ;
 int MVNETA_TYPE_PRIO ;
 int MVNETA_UNI_PROMISC_MODE ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_rx_unicast_promisc_set(struct mvneta_port *pp,
       int is_promisc)
{
 u32 port_cfg_reg, val;

 port_cfg_reg = mvreg_read(pp, MVNETA_PORT_CONFIG);

 val = mvreg_read(pp, MVNETA_TYPE_PRIO);


 if (is_promisc) {

  port_cfg_reg |= MVNETA_UNI_PROMISC_MODE;
  val |= MVNETA_FORCE_UNI;
  mvreg_write(pp, MVNETA_MAC_ADDR_LOW, 0xffff);
  mvreg_write(pp, MVNETA_MAC_ADDR_HIGH, 0xffffffff);
 } else {

  port_cfg_reg &= ~MVNETA_UNI_PROMISC_MODE;
  val &= ~MVNETA_FORCE_UNI;
 }

 mvreg_write(pp, MVNETA_PORT_CONFIG, port_cfg_reg);
 mvreg_write(pp, MVNETA_TYPE_PRIO, val);
}
