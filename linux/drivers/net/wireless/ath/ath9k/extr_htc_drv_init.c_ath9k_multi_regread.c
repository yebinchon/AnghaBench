
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {int wmi; } ;
typedef int __be32 ;


 int WMI ;
 int WMI_REG_READ_CMDID ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_wmi_cmd (int ,int ,int *,int,int *,int,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ath9k_multi_regread(void *hw_priv, u32 *addr,
    u32 *val, u16 count)
{
 struct ath_hw *ah = hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;
 __be32 tmpaddr[8];
 __be32 tmpval[8];
 int i, ret;

 for (i = 0; i < count; i++) {
  tmpaddr[i] = cpu_to_be32(addr[i]);
 }

 ret = ath9k_wmi_cmd(priv->wmi, WMI_REG_READ_CMDID,
      (u8 *)tmpaddr , sizeof(u32) * count,
      (u8 *)tmpval, sizeof(u32) * count,
      100);
 if (unlikely(ret)) {
  ath_dbg(common, WMI,
   "Multiple REGISTER READ FAILED (count: %d)\n", count);
 }

 for (i = 0; i < count; i++) {
  val[i] = be32_to_cpu(tmpval[i]);
 }
}
