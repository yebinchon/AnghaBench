
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cec {int regmap; } ;


 int ALL_RX_IT ;
 int ALL_TX_IT ;
 int CECEN ;
 int CEC_CFGR ;
 int CEC_CR ;
 int CEC_IER ;
 int FULL_CFG ;
 int TXEOM ;
 int TXSOM ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void cec_hw_init(struct stm32_cec *cec)
{
 regmap_update_bits(cec->regmap, CEC_CR, TXEOM | TXSOM | CECEN, 0);

 regmap_update_bits(cec->regmap, CEC_IER, ALL_TX_IT | ALL_RX_IT,
      ALL_TX_IT | ALL_RX_IT);

 regmap_update_bits(cec->regmap, CEC_CFGR, FULL_CFG, FULL_CFG);
}
