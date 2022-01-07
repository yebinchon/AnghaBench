
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int ccdc; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;


 int CCDC_FRMFMT_PROGRESSIVE ;
 int VPFE_IRQ_EN_CLR ;
 unsigned int VPFE_VDINT0 ;
 unsigned int VPFE_VDINT1 ;
 int vpfe_ccdc_get_frame_format (int *) ;
 int vpfe_reg_write (int *,unsigned int,int ) ;

__attribute__((used)) static inline void vpfe_detach_irq(struct vpfe_device *vpfe)
{
 unsigned int intr = VPFE_VDINT0;
 enum ccdc_frmfmt frame_format;

 frame_format = vpfe_ccdc_get_frame_format(&vpfe->ccdc);
 if (frame_format == CCDC_FRMFMT_PROGRESSIVE)
  intr |= VPFE_VDINT1;

 vpfe_reg_write(&vpfe->ccdc, intr, VPFE_IRQ_EN_CLR);
}
