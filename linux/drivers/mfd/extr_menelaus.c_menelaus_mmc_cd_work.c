
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menelaus_chip {int mmc_callback_data; int (* mmc_callback ) (int ,unsigned char) ;} ;


 unsigned char MCT_PIN_ST_S1_CD_ST ;
 unsigned char MCT_PIN_ST_S2_CD_ST ;
 int MENELAUS_MCT_PIN_ST ;
 int menelaus_read_reg (int ) ;
 int stub1 (int ,unsigned char) ;

__attribute__((used)) static void menelaus_mmc_cd_work(struct menelaus_chip *menelaus_hw)
{
 int reg;
 unsigned char card_mask = 0;

 reg = menelaus_read_reg(MENELAUS_MCT_PIN_ST);
 if (reg < 0)
  return;

 if (!(reg & 0x1))
  card_mask |= MCT_PIN_ST_S1_CD_ST;

 if (!(reg & 0x2))
  card_mask |= MCT_PIN_ST_S2_CD_ST;

 if (menelaus_hw->mmc_callback)
  menelaus_hw->mmc_callback(menelaus_hw->mmc_callback_data,
       card_mask);
}
