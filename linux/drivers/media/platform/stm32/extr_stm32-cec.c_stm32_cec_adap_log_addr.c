
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stm32_cec {int regmap; } ;
struct cec_adapter {struct stm32_cec* priv; } ;


 int CECEN ;
 int CEC_CFGR ;
 int CEC_CR ;
 int CEC_LOG_ADDR_INVALID ;
 int CEC_XFER_TIMEOUT_MS ;
 int OAR ;
 int TXSOM ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int stm32_cec_adap_log_addr(struct cec_adapter *adap, u8 logical_addr)
{
 struct stm32_cec *cec = adap->priv;
 u32 oar = (1 << logical_addr) << 16;
 u32 val;


 regmap_read_poll_timeout(cec->regmap, CEC_CR, val, !(val & TXSOM),
     100, CEC_XFER_TIMEOUT_MS * 1000);
 regmap_update_bits(cec->regmap, CEC_CR, CECEN, 0);

 if (logical_addr == CEC_LOG_ADDR_INVALID)
  regmap_update_bits(cec->regmap, CEC_CFGR, OAR, 0);
 else
  regmap_update_bits(cec->regmap, CEC_CFGR, oar, oar);

 regmap_update_bits(cec->regmap, CEC_CR, CECEN, CECEN);

 return 0;
}
