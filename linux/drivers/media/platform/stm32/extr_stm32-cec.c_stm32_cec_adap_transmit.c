
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cec_msg {int len; int * msg; } ;
struct stm32_cec {scalar_t__ tx_cnt; struct cec_msg tx_msg; int regmap; } ;
struct cec_adapter {struct stm32_cec* priv; } ;


 int CEC_CR ;
 int CEC_TXDR ;
 int TXEOM ;
 int TXSOM ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int stm32_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
       u32 signal_free_time, struct cec_msg *msg)
{
 struct stm32_cec *cec = adap->priv;


 cec->tx_msg = *msg;
 cec->tx_cnt = 0;





 if (cec->tx_msg.len == 1)
  regmap_update_bits(cec->regmap, CEC_CR, TXEOM, TXEOM);


 regmap_update_bits(cec->regmap, CEC_CR, TXSOM, TXSOM);


 regmap_write(cec->regmap, CEC_TXDR, cec->tx_msg.msg[0]);
 cec->tx_cnt++;

 return 0;
}
