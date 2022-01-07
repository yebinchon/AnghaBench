
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int height; int width; int top; int left; } ;
struct stm32_dcmi {int regs; TYPE_1__ crop; int dev; } ;


 int CR_CROP ;
 int DCMI_CR ;
 int DCMI_CWSIZE ;
 int DCMI_CWSTRT ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 int reg_set (int ,int ,int ) ;
 int reg_write (int ,int ,int) ;

__attribute__((used)) static void dcmi_set_crop(struct stm32_dcmi *dcmi)
{
 u32 size, start;


 size = ((dcmi->crop.height - 1) << 16) |
  ((dcmi->crop.width << 1) - 1);
 reg_write(dcmi->regs, DCMI_CWSIZE, size);


 start = ((dcmi->crop.top) << 16) |
   ((dcmi->crop.left << 1));
 reg_write(dcmi->regs, DCMI_CWSTRT, start);

 dev_dbg(dcmi->dev, "Cropping to %ux%u@%u:%u\n",
  dcmi->crop.width, dcmi->crop.height,
  dcmi->crop.left, dcmi->crop.top);


 reg_set(dcmi->regs, DCMI_CR, CR_CROP);
}
