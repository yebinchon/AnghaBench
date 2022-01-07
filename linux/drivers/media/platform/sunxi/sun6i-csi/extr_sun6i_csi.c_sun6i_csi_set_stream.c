
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_csi_dev {struct regmap* regmap; } ;
struct sun6i_csi {int dummy; } ;
struct regmap {int dummy; } ;


 int CSI_CAP_CH0_VCAP_ON ;
 int CSI_CAP_REG ;
 int CSI_CH_INT_EN_CD_INT_EN ;
 int CSI_CH_INT_EN_FD_INT_EN ;
 int CSI_CH_INT_EN_FIFO0_OF_INT_EN ;
 int CSI_CH_INT_EN_FIFO1_OF_INT_EN ;
 int CSI_CH_INT_EN_FIFO2_OF_INT_EN ;
 int CSI_CH_INT_EN_HB_OF_INT_EN ;
 int CSI_CH_INT_EN_REG ;
 int CSI_CH_INT_STA_REG ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int) ;
 struct sun6i_csi_dev* sun6i_csi_to_dev (struct sun6i_csi*) ;

void sun6i_csi_set_stream(struct sun6i_csi *csi, bool enable)
{
 struct sun6i_csi_dev *sdev = sun6i_csi_to_dev(csi);
 struct regmap *regmap = sdev->regmap;

 if (!enable) {
  regmap_update_bits(regmap, CSI_CAP_REG, CSI_CAP_CH0_VCAP_ON, 0);
  regmap_write(regmap, CSI_CH_INT_EN_REG, 0);
  return;
 }

 regmap_write(regmap, CSI_CH_INT_STA_REG, 0xFF);
 regmap_write(regmap, CSI_CH_INT_EN_REG,
       CSI_CH_INT_EN_HB_OF_INT_EN |
       CSI_CH_INT_EN_FIFO2_OF_INT_EN |
       CSI_CH_INT_EN_FIFO1_OF_INT_EN |
       CSI_CH_INT_EN_FIFO0_OF_INT_EN |
       CSI_CH_INT_EN_FD_INT_EN |
       CSI_CH_INT_EN_CD_INT_EN);

 regmap_update_bits(regmap, CSI_CAP_REG, CSI_CAP_CH0_VCAP_ON,
      CSI_CAP_CH0_VCAP_ON);
}
