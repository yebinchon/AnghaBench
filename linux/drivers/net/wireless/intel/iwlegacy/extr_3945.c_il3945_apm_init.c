
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int APMG_PS_CTRL_REG ;
 int APMG_PS_CTRL_VAL_RESET_REQ ;
 int APMG_RTC_INT_MSK_REG ;
 int APMG_RTC_INT_STT_REG ;
 int il_apm_init (struct il_priv*) ;
 int il_clear_bits_prph (struct il_priv*,int ,int ) ;
 int il_set_bits_prph (struct il_priv*,int ,int ) ;
 int il_wr_prph (struct il_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int
il3945_apm_init(struct il_priv *il)
{
 int ret = il_apm_init(il);


 il_wr_prph(il, APMG_RTC_INT_MSK_REG, 0x0);
 il_wr_prph(il, APMG_RTC_INT_STT_REG, 0xFFFFFFFF);


 il_set_bits_prph(il, APMG_PS_CTRL_REG, APMG_PS_CTRL_VAL_RESET_REQ);
 udelay(5);
 il_clear_bits_prph(il, APMG_PS_CTRL_REG, APMG_PS_CTRL_VAL_RESET_REQ);

 return ret;
}
