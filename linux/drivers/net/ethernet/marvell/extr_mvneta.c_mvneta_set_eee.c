
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_port {int dummy; } ;


 int MVNETA_LPI_CTRL_1 ;
 int MVNETA_LPI_REQUEST_ENABLE ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_set_eee(struct mvneta_port *pp, bool enable)
{
 u32 lpi_ctl1;

 lpi_ctl1 = mvreg_read(pp, MVNETA_LPI_CTRL_1);
 if (enable)
  lpi_ctl1 |= MVNETA_LPI_REQUEST_ENABLE;
 else
  lpi_ctl1 &= ~MVNETA_LPI_REQUEST_ENABLE;
 mvreg_write(pp, MVNETA_LPI_CTRL_1, lpi_ctl1);
}
