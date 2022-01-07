
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct elm_info {int elm_completion; } ;
struct elm_errorvec {int dummy; } ;
struct device {int dummy; } ;


 int ELM_IRQENABLE ;
 int ELM_IRQSTATUS ;
 int INTR_EN_PAGE_MASK ;
 int INTR_STATUS_PAGE_VALID ;
 struct elm_info* dev_get_drvdata (struct device*) ;
 int elm_error_correction (struct elm_info*,struct elm_errorvec*) ;
 int elm_load_syndrome (struct elm_info*,struct elm_errorvec*,int *) ;
 int elm_read_reg (struct elm_info*,int ) ;
 int elm_start_processing (struct elm_info*,struct elm_errorvec*) ;
 int elm_write_reg (struct elm_info*,int ,int) ;
 int wait_for_completion (int *) ;

void elm_decode_bch_error_page(struct device *dev, u8 *ecc_calc,
  struct elm_errorvec *err_vec)
{
 struct elm_info *info = dev_get_drvdata(dev);
 u32 reg_val;


 reg_val = elm_read_reg(info, ELM_IRQSTATUS);
 elm_write_reg(info, ELM_IRQSTATUS, reg_val & INTR_STATUS_PAGE_VALID);
 elm_write_reg(info, ELM_IRQENABLE, INTR_EN_PAGE_MASK);


 elm_load_syndrome(info, err_vec, ecc_calc);


 elm_start_processing(info, err_vec);


 wait_for_completion(&info->elm_completion);


 reg_val = elm_read_reg(info, ELM_IRQENABLE);
 elm_write_reg(info, ELM_IRQENABLE, reg_val & ~INTR_EN_PAGE_MASK);
 elm_error_correction(info, err_vec);
}
