
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int video; } ;
struct sun6i_csi_dev {TYPE_1__ csi; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
typedef int irqreturn_t ;


 int CSI_CH_INT_STA_FD_PD ;
 int CSI_CH_INT_STA_FIFO0_OF_PD ;
 int CSI_CH_INT_STA_FIFO1_OF_PD ;
 int CSI_CH_INT_STA_FIFO2_OF_PD ;
 int CSI_CH_INT_STA_HB_OF_PD ;
 int CSI_CH_INT_STA_REG ;
 int CSI_EN_CSI_EN ;
 int CSI_EN_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int) ;
 int sun6i_video_frame_done (int *) ;

__attribute__((used)) static irqreturn_t sun6i_csi_isr(int irq, void *dev_id)
{
 struct sun6i_csi_dev *sdev = (struct sun6i_csi_dev *)dev_id;
 struct regmap *regmap = sdev->regmap;
 u32 status;

 regmap_read(regmap, CSI_CH_INT_STA_REG, &status);

 if (!(status & 0xFF))
  return IRQ_NONE;

 if ((status & CSI_CH_INT_STA_FIFO0_OF_PD) ||
     (status & CSI_CH_INT_STA_FIFO1_OF_PD) ||
     (status & CSI_CH_INT_STA_FIFO2_OF_PD) ||
     (status & CSI_CH_INT_STA_HB_OF_PD)) {
  regmap_write(regmap, CSI_CH_INT_STA_REG, status);
  regmap_update_bits(regmap, CSI_EN_REG, CSI_EN_CSI_EN, 0);
  regmap_update_bits(regmap, CSI_EN_REG, CSI_EN_CSI_EN,
       CSI_EN_CSI_EN);
  return IRQ_HANDLED;
 }

 if (status & CSI_CH_INT_STA_FD_PD)
  sun6i_video_frame_done(&sdev->csi.video);

 regmap_write(regmap, CSI_CH_INT_STA_REG, status);

 return IRQ_HANDLED;
}
