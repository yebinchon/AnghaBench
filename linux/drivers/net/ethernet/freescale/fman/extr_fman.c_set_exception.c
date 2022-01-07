
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct fman {TYPE_4__* fpm_regs; TYPE_3__* bmi_regs; TYPE_2__* qmi_regs; TYPE_1__* dma_regs; } ;
typedef enum fman_exceptions { ____Placeholder_fman_exceptions } fman_exceptions ;
struct TYPE_9__ {int fm_rie; int fmfp_ee; } ;
struct TYPE_8__ {int fmbm_ier; } ;
struct TYPE_7__ {int fmqm_eien; int fmqm_ien; } ;
struct TYPE_6__ {int fmdmmr; } ;


 int BMI_ERR_INTR_EN_DISPATCH_RAM_ECC ;
 int BMI_ERR_INTR_EN_LIST_RAM_ECC ;
 int BMI_ERR_INTR_EN_STATISTICS_RAM_ECC ;
 int BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC ;
 int DMA_MODE_BER ;
 int DMA_MODE_ECC ;
 int EINVAL ;
 int FPM_EV_MASK_DOUBLE_ECC_EN ;
 int FPM_EV_MASK_SINGLE_ECC_EN ;
 int FPM_EV_MASK_STALL_EN ;
 int FPM_IRAM_ECC_ERR_EX_EN ;
 int FPM_MURAM_ECC_ERR_EX_EN ;
 int QMI_ERR_INTR_EN_DEQ_FROM_DEF ;
 int QMI_ERR_INTR_EN_DOUBLE_ECC ;
 int QMI_INTR_EN_SINGLE_ECC ;
 int disable_rams_ecc (TYPE_4__*) ;
 int enable_rams_ecc (TYPE_4__*) ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

__attribute__((used)) static int set_exception(struct fman *fman,
    enum fman_exceptions exception, bool enable)
{
 u32 tmp;

 switch (exception) {
 case 139:
  tmp = ioread32be(&fman->dma_regs->fmdmmr);
  if (enable)
   tmp |= DMA_MODE_BER;
  else
   tmp &= ~DMA_MODE_BER;

  iowrite32be(tmp, &fman->dma_regs->fmdmmr);
  break;
 case 137:
 case 136:
 case 138:
  tmp = ioread32be(&fman->dma_regs->fmdmmr);
  if (enable)
   tmp |= DMA_MODE_ECC;
  else
   tmp &= ~DMA_MODE_ECC;
  iowrite32be(tmp, &fman->dma_regs->fmdmmr);
  break;
 case 133:
  tmp = ioread32be(&fman->fpm_regs->fmfp_ee);
  if (enable)
   tmp |= FPM_EV_MASK_STALL_EN;
  else
   tmp &= ~FPM_EV_MASK_STALL_EN;
  iowrite32be(tmp, &fman->fpm_regs->fmfp_ee);
  break;
 case 134:
  tmp = ioread32be(&fman->fpm_regs->fmfp_ee);
  if (enable)
   tmp |= FPM_EV_MASK_SINGLE_ECC_EN;
  else
   tmp &= ~FPM_EV_MASK_SINGLE_ECC_EN;
  iowrite32be(tmp, &fman->fpm_regs->fmfp_ee);
  break;
 case 135:
  tmp = ioread32be(&fman->fpm_regs->fmfp_ee);
  if (enable)
   tmp |= FPM_EV_MASK_DOUBLE_ECC_EN;
  else
   tmp &= ~FPM_EV_MASK_DOUBLE_ECC_EN;
  iowrite32be(tmp, &fman->fpm_regs->fmfp_ee);
  break;
 case 128:
  tmp = ioread32be(&fman->qmi_regs->fmqm_ien);
  if (enable)
   tmp |= QMI_INTR_EN_SINGLE_ECC;
  else
   tmp &= ~QMI_INTR_EN_SINGLE_ECC;
  iowrite32be(tmp, &fman->qmi_regs->fmqm_ien);
  break;
 case 129:
  tmp = ioread32be(&fman->qmi_regs->fmqm_eien);
  if (enable)
   tmp |= QMI_ERR_INTR_EN_DOUBLE_ECC;
  else
   tmp &= ~QMI_ERR_INTR_EN_DOUBLE_ECC;
  iowrite32be(tmp, &fman->qmi_regs->fmqm_eien);
  break;
 case 130:
  tmp = ioread32be(&fman->qmi_regs->fmqm_eien);
  if (enable)
   tmp |= QMI_ERR_INTR_EN_DEQ_FROM_DEF;
  else
   tmp &= ~QMI_ERR_INTR_EN_DEQ_FROM_DEF;
  iowrite32be(tmp, &fman->qmi_regs->fmqm_eien);
  break;
 case 142:
  tmp = ioread32be(&fman->bmi_regs->fmbm_ier);
  if (enable)
   tmp |= BMI_ERR_INTR_EN_LIST_RAM_ECC;
  else
   tmp &= ~BMI_ERR_INTR_EN_LIST_RAM_ECC;
  iowrite32be(tmp, &fman->bmi_regs->fmbm_ier);
  break;
 case 140:
  tmp = ioread32be(&fman->bmi_regs->fmbm_ier);
  if (enable)
   tmp |= BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC;
  else
   tmp &= ~BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC;
  iowrite32be(tmp, &fman->bmi_regs->fmbm_ier);
  break;
 case 141:
  tmp = ioread32be(&fman->bmi_regs->fmbm_ier);
  if (enable)
   tmp |= BMI_ERR_INTR_EN_STATISTICS_RAM_ECC;
  else
   tmp &= ~BMI_ERR_INTR_EN_STATISTICS_RAM_ECC;
  iowrite32be(tmp, &fman->bmi_regs->fmbm_ier);
  break;
 case 143:
  tmp = ioread32be(&fman->bmi_regs->fmbm_ier);
  if (enable)
   tmp |= BMI_ERR_INTR_EN_DISPATCH_RAM_ECC;
  else
   tmp &= ~BMI_ERR_INTR_EN_DISPATCH_RAM_ECC;
  iowrite32be(tmp, &fman->bmi_regs->fmbm_ier);
  break;
 case 132:
  tmp = ioread32be(&fman->fpm_regs->fm_rie);
  if (enable) {

   enable_rams_ecc(fman->fpm_regs);

   tmp |= FPM_IRAM_ECC_ERR_EX_EN;
  } else {



   disable_rams_ecc(fman->fpm_regs);
   tmp &= ~FPM_IRAM_ECC_ERR_EX_EN;
  }
  iowrite32be(tmp, &fman->fpm_regs->fm_rie);
  break;
 case 131:
  tmp = ioread32be(&fman->fpm_regs->fm_rie);
  if (enable) {

   enable_rams_ecc(fman->fpm_regs);

   tmp |= FPM_MURAM_ECC_ERR_EX_EN;
  } else {



   disable_rams_ecc(fman->fpm_regs);
   tmp &= ~FPM_MURAM_ECC_ERR_EX_EN;
  }
  iowrite32be(tmp, &fman->fpm_regs->fm_rie);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
