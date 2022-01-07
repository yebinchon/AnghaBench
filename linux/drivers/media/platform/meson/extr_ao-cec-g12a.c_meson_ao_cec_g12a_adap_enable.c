
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_ao_cec_g12a_device {int regmap_cec; TYPE_1__* data; int regmap; } ;
struct cec_adapter {struct meson_ao_cec_g12a_device* priv; } ;
struct TYPE_2__ {scalar_t__ ctrl2_setup; } ;


 int CECB_CTRL2 ;
 int CECB_CTRL2_RISE_DEL_MAX ;
 int CECB_GEN_CNTL_CLK_CTRL_MASK ;
 int CECB_GEN_CNTL_CLK_ENABLE ;
 int CECB_GEN_CNTL_FILTER_DEL ;
 int CECB_GEN_CNTL_FILTER_TICK_1US ;
 int CECB_GEN_CNTL_FILTER_TICK_SEL ;
 int CECB_GEN_CNTL_REG ;
 int CECB_GEN_CNTL_RESET ;
 int CECB_GEN_CNTL_SYS_CLK_EN ;
 int FIELD_PREP (int,int) ;
 int meson_ao_cec_g12a_irq_setup (struct meson_ao_cec_g12a_device*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int meson_ao_cec_g12a_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct meson_ao_cec_g12a_device *ao_cec = adap->priv;

 meson_ao_cec_g12a_irq_setup(ao_cec, 0);

 regmap_update_bits(ao_cec->regmap, CECB_GEN_CNTL_REG,
      CECB_GEN_CNTL_RESET, CECB_GEN_CNTL_RESET);

 if (!enable)
  return 0;


 regmap_update_bits(ao_cec->regmap, CECB_GEN_CNTL_REG,
      CECB_GEN_CNTL_FILTER_TICK_SEL |
      CECB_GEN_CNTL_FILTER_DEL,
      FIELD_PREP(CECB_GEN_CNTL_FILTER_TICK_SEL,
          CECB_GEN_CNTL_FILTER_TICK_1US) |
      FIELD_PREP(CECB_GEN_CNTL_FILTER_DEL, 7));


 regmap_update_bits(ao_cec->regmap, CECB_GEN_CNTL_REG,
      CECB_GEN_CNTL_SYS_CLK_EN,
      CECB_GEN_CNTL_SYS_CLK_EN);


 regmap_update_bits(ao_cec->regmap, CECB_GEN_CNTL_REG,
      CECB_GEN_CNTL_CLK_CTRL_MASK,
       FIELD_PREP(CECB_GEN_CNTL_CLK_CTRL_MASK,
           CECB_GEN_CNTL_CLK_ENABLE));


 regmap_update_bits(ao_cec->regmap, CECB_GEN_CNTL_REG,
      CECB_GEN_CNTL_RESET, 0);

 if (ao_cec->data->ctrl2_setup)
  regmap_write(ao_cec->regmap_cec, CECB_CTRL2,
        FIELD_PREP(CECB_CTRL2_RISE_DEL_MAX, 2));

 meson_ao_cec_g12a_irq_setup(ao_cec, 1);

 return 0;
}
