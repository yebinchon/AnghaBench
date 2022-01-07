
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct register_rmw {void* clr; void* set; void* reg; } ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {int wmi; } ;
typedef int buf_ret ;
typedef int buf ;


 int WMI ;
 int WMI_REG_RMW_CMDID ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_wmi_cmd (int ,int ,int *,int,int *,int,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int) ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ath9k_reg_rmw_single(void *hw_priv,
     u32 reg_offset, u32 set, u32 clr)
{
 struct ath_hw *ah = hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;
 struct register_rmw buf, buf_ret;
 int ret;

 buf.reg = cpu_to_be32(reg_offset);
 buf.set = cpu_to_be32(set);
 buf.clr = cpu_to_be32(clr);

 ret = ath9k_wmi_cmd(priv->wmi, WMI_REG_RMW_CMDID,
     (u8 *) &buf, sizeof(buf),
     (u8 *) &buf_ret, sizeof(buf_ret),
     100);
 if (unlikely(ret)) {
  ath_dbg(common, WMI, "REGISTER RMW FAILED:(0x%04x, %d)\n",
   reg_offset, ret);
 }
}
