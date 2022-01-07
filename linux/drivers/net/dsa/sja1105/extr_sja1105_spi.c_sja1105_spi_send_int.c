
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sja1105_private {int dummy; } ;
typedef scalar_t__ sja1105_spi_rw_mode_t ;


 int ERANGE ;
 int SJA1105_SIZE_SPI_MSG_MAXLEN ;
 scalar_t__ SPI_READ ;
 scalar_t__ SPI_WRITE ;
 int sja1105_pack (int *,int*,int,int ,int) ;
 int sja1105_spi_send_packed_buf (struct sja1105_private const*,scalar_t__,int,int *,int) ;
 int sja1105_unpack (int *,int*,int,int ,int) ;

int sja1105_spi_send_int(const struct sja1105_private *priv,
    sja1105_spi_rw_mode_t rw, u64 reg_addr,
    u64 *value, u64 size_bytes)
{
 u8 packed_buf[SJA1105_SIZE_SPI_MSG_MAXLEN];
 int rc;

 if (size_bytes > SJA1105_SIZE_SPI_MSG_MAXLEN)
  return -ERANGE;

 if (rw == SPI_WRITE)
  sja1105_pack(packed_buf, value, 8 * size_bytes - 1, 0,
        size_bytes);

 rc = sja1105_spi_send_packed_buf(priv, rw, reg_addr, packed_buf,
      size_bytes);

 if (rw == SPI_READ)
  sja1105_unpack(packed_buf, value, 8 * size_bytes - 1, 0,
          size_bytes);

 return rc;
}
