
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qcaspi {int net_dev; } ;


 int SPI_INT_CPU_ON ;
 int SPI_INT_PKT_AVLBL ;
 int SPI_INT_RDBUF_ERR ;
 int SPI_INT_WRBUF_ERR ;
 int SPI_REG_INTR_CAUSE ;
 int SPI_REG_INTR_ENABLE ;
 int netdev_dbg (int ,char*,int) ;
 int qcaspi_write_register (struct qcaspi*,int ,int,int ) ;
 int wr_verify ;

__attribute__((used)) static void
end_spi_intr_handling(struct qcaspi *qca, u16 intr_cause)
{
 u16 intr_enable = (SPI_INT_CPU_ON |
      SPI_INT_PKT_AVLBL |
      SPI_INT_RDBUF_ERR |
      SPI_INT_WRBUF_ERR);

 qcaspi_write_register(qca, SPI_REG_INTR_CAUSE, intr_cause, 0);
 qcaspi_write_register(qca, SPI_REG_INTR_ENABLE, intr_enable, wr_verify);
 netdev_dbg(qca->net_dev, "acking int: 0x%04x\n", intr_cause);
}
