
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sja1105_status {int dummy; } ;
struct sja1105_regs {int status; } ;
struct sja1105_private {TYPE_1__* info; } ;
struct TYPE_2__ {struct sja1105_regs* regs; } ;


 int SPI_READ ;
 int sja1105_spi_send_packed_buf (struct sja1105_private*,int ,int ,int *,int) ;
 int sja1105_status_unpack (int *,struct sja1105_status*) ;

__attribute__((used)) static int sja1105_status_get(struct sja1105_private *priv,
         struct sja1105_status *status)
{
 const struct sja1105_regs *regs = priv->info->regs;
 u8 packed_buf[4];
 int rc;

 rc = sja1105_spi_send_packed_buf(priv, SPI_READ,
      regs->status,
      packed_buf, 4);
 if (rc < 0)
  return rc;

 sja1105_status_unpack(packed_buf, status);

 return 0;
}
