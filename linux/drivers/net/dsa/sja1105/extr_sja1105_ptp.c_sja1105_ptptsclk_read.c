
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sja1105_regs {int ptptsclk; } ;
struct sja1105_private {TYPE_2__* ds; TYPE_1__* info; } ;
struct cyclecounter {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct sja1105_regs* regs; } ;


 int SPI_READ ;
 struct sja1105_private* cc_to_sja1105 (struct cyclecounter const*) ;
 int dev_err_ratelimited (int ,char*,int) ;
 int sja1105_spi_send_int (struct sja1105_private*,int ,int ,int *,int) ;

__attribute__((used)) static u64 sja1105_ptptsclk_read(const struct cyclecounter *cc)
{
 struct sja1105_private *priv = cc_to_sja1105(cc);
 const struct sja1105_regs *regs = priv->info->regs;
 u64 ptptsclk = 0;
 int rc;

 rc = sja1105_spi_send_int(priv, SPI_READ, regs->ptptsclk,
      &ptptsclk, 8);
 if (rc < 0)
  dev_err_ratelimited(priv->ds->dev,
        "failed to read ptp cycle counter: %d\n",
        rc);
 return ptptsclk;
}
