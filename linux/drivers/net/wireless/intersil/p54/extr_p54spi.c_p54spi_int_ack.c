
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct p54s_priv {int dummy; } ;


 int SPI_ADRS_HOST_INT_ACK ;
 int cpu_to_le32 (int ) ;
 int p54spi_write32 (struct p54s_priv*,int ,int ) ;

__attribute__((used)) static inline void p54spi_int_ack(struct p54s_priv *priv, u32 val)
{
 p54spi_write32(priv, SPI_ADRS_HOST_INT_ACK, cpu_to_le32(val));
}
