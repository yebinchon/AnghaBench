
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_ao_cec_g12a_device {int regmap; } ;


 int CECB_RW_ADDR ;
 int CECB_RW_REG ;
 int CECB_RW_WRITE_EN ;
 int CECB_RW_WR_DATA ;
 int FIELD_PREP (int ,unsigned int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int meson_ao_cec_g12a_write(void *context, unsigned int addr,
       unsigned int data)
{
 struct meson_ao_cec_g12a_device *ao_cec = context;
 u32 reg = FIELD_PREP(CECB_RW_ADDR, addr) |
    FIELD_PREP(CECB_RW_WR_DATA, data) |
    CECB_RW_WRITE_EN;

 return regmap_write(ao_cec->regmap, CECB_RW_REG, reg);
}
