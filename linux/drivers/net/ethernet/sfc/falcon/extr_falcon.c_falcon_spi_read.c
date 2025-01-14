
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct falcon_spi_device {int dummy; } ;
struct ef4_nic {int dummy; } ;
typedef scalar_t__ loff_t ;


 int EINTR ;
 int FALCON_SPI_MAX_LEN ;
 int SPI_READ ;
 int cond_resched () ;
 int current ;
 int falcon_spi_cmd (struct ef4_nic*,struct falcon_spi_device const*,unsigned int,scalar_t__,int *,int *,size_t) ;
 unsigned int falcon_spi_munge_command (struct falcon_spi_device const*,int ,scalar_t__) ;
 size_t min (size_t,int ) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int
falcon_spi_read(struct ef4_nic *efx, const struct falcon_spi_device *spi,
  loff_t start, size_t len, size_t *retlen, u8 *buffer)
{
 size_t block_len, pos = 0;
 unsigned int command;
 int rc = 0;

 while (pos < len) {
  block_len = min(len - pos, FALCON_SPI_MAX_LEN);

  command = falcon_spi_munge_command(spi, SPI_READ, start + pos);
  rc = falcon_spi_cmd(efx, spi, command, start + pos, ((void*)0),
        buffer + pos, block_len);
  if (rc)
   break;
  pos += block_len;


  cond_resched();
  if (signal_pending(current)) {
   rc = -EINTR;
   break;
  }
 }

 if (retlen)
  *retlen = pos;
 return rc;
}
