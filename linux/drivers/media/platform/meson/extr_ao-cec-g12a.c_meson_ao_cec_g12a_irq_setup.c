
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_ao_cec_g12a_device {int regmap; } ;


 int CECB_INTR_ARB_LOSS ;
 int CECB_INTR_DONE ;
 int CECB_INTR_EOM ;
 int CECB_INTR_FOLLOWER_ERR ;
 int CECB_INTR_INITIATOR_ERR ;
 int CECB_INTR_MASKN_REG ;
 int CECB_INTR_NACK ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static inline void
meson_ao_cec_g12a_irq_setup(struct meson_ao_cec_g12a_device *ao_cec,
       bool enable)
{
 u32 cfg = CECB_INTR_DONE | CECB_INTR_EOM | CECB_INTR_NACK |
    CECB_INTR_ARB_LOSS | CECB_INTR_INITIATOR_ERR |
    CECB_INTR_FOLLOWER_ERR;

 regmap_write(ao_cec->regmap, CECB_INTR_MASKN_REG,
       enable ? cfg : 0);
}
