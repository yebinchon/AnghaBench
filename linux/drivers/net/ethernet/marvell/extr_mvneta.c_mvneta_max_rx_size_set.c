
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_port {int dummy; } ;


 int MVNETA_GMAC_CTRL_0 ;
 int MVNETA_GMAC_MAX_RX_SIZE_MASK ;
 int MVNETA_GMAC_MAX_RX_SIZE_SHIFT ;
 int MVNETA_MH_SIZE ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_max_rx_size_set(struct mvneta_port *pp, int max_rx_size)
{
 u32 val;

 val = mvreg_read(pp, MVNETA_GMAC_CTRL_0);
 val &= ~MVNETA_GMAC_MAX_RX_SIZE_MASK;
 val |= ((max_rx_size - MVNETA_MH_SIZE) / 2) <<
  MVNETA_GMAC_MAX_RX_SIZE_SHIFT;
 mvreg_write(pp, MVNETA_GMAC_CTRL_0, val);
}
