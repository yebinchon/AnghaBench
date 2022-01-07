
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_ccdc {int dummy; } ;
struct device {int dummy; } ;


 int VPFE_DMA_CNTL ;
 int VPFE_DMA_CNTL_OVERFLOW ;
 int VPFE_PCR ;
 int pm_runtime_put_sync (struct device*) ;
 int usleep_range (int,int) ;
 int vpfe_ccdc_restore_defaults (struct vpfe_ccdc*) ;
 int vpfe_config_enable (struct vpfe_ccdc*,int ) ;
 int vpfe_pcr_enable (struct vpfe_ccdc*,int ) ;
 int vpfe_reg_read (struct vpfe_ccdc*,int ) ;
 int vpfe_reg_write (struct vpfe_ccdc*,int,int ) ;

__attribute__((used)) static int vpfe_ccdc_close(struct vpfe_ccdc *ccdc, struct device *dev)
{
 int dma_cntl, i, pcr;


 for (i = 0; i < 10; i++) {
  usleep_range(5000, 6000);
  pcr = vpfe_reg_read(ccdc, VPFE_PCR);
  if (!pcr)
   break;


  vpfe_pcr_enable(ccdc, 0);
 }


 vpfe_ccdc_restore_defaults(ccdc);




 for (i = 0; i < 10; i++) {
  dma_cntl = vpfe_reg_read(ccdc, VPFE_DMA_CNTL);
  if (!(dma_cntl & VPFE_DMA_CNTL_OVERFLOW))
   break;


  vpfe_reg_write(ccdc, dma_cntl, VPFE_DMA_CNTL);
  usleep_range(5000, 6000);
 }


 vpfe_config_enable(ccdc, 0);

 pm_runtime_put_sync(dev);

 return 0;
}
