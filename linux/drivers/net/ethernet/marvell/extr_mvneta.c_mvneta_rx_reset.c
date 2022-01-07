
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int dummy; } ;


 int MVNETA_PORT_RX_DMA_RESET ;
 int MVNETA_PORT_RX_RESET ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_rx_reset(struct mvneta_port *pp)
{
 mvreg_write(pp, MVNETA_PORT_RX_RESET, MVNETA_PORT_RX_DMA_RESET);
 mvreg_write(pp, MVNETA_PORT_RX_RESET, 0);
}
