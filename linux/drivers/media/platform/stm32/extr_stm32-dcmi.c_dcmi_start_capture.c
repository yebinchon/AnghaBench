
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dcmi {int regs; int errors_count; } ;
struct dcmi_buf {int dummy; } ;


 int CR_CAPTURE ;
 int DCMI_CR ;
 int EINVAL ;
 int dcmi_start_dma (struct stm32_dcmi*,struct dcmi_buf*) ;
 int reg_set (int ,int ,int ) ;

__attribute__((used)) static int dcmi_start_capture(struct stm32_dcmi *dcmi, struct dcmi_buf *buf)
{
 int ret;

 if (!buf)
  return -EINVAL;

 ret = dcmi_start_dma(dcmi, buf);
 if (ret) {
  dcmi->errors_count++;
  return ret;
 }


 reg_set(dcmi->regs, DCMI_CR, CR_CAPTURE);

 return 0;
}
