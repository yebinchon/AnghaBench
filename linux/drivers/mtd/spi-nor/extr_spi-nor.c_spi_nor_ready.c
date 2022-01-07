
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int flags; } ;


 int SNOR_F_READY_XSR_RDY ;
 int SNOR_F_USE_FSR ;
 int s3an_sr_ready (struct spi_nor*) ;
 int spi_nor_fsr_ready (struct spi_nor*) ;
 int spi_nor_sr_ready (struct spi_nor*) ;

__attribute__((used)) static int spi_nor_ready(struct spi_nor *nor)
{
 int sr, fsr;

 if (nor->flags & SNOR_F_READY_XSR_RDY)
  sr = s3an_sr_ready(nor);
 else
  sr = spi_nor_sr_ready(nor);
 if (sr < 0)
  return sr;
 fsr = nor->flags & SNOR_F_USE_FSR ? spi_nor_fsr_ready(nor) : 1;
 if (fsr < 0)
  return fsr;
 return sr && fsr;
}
