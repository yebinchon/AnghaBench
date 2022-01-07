
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54s_priv {int dummy; } ;


 int SPI_ADRS_ARM_INTERRUPTS ;
 int SPI_TARGET_INT_SLEEP ;
 int cpu_to_le32 (int ) ;
 int p54spi_write32 (struct p54s_priv*,int ,int ) ;

__attribute__((used)) static inline void p54spi_sleep(struct p54s_priv *priv)
{
 p54spi_write32(priv, SPI_ADRS_ARM_INTERRUPTS,
         cpu_to_le32(SPI_TARGET_INT_SLEEP));
}
