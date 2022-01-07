
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; int fw_flags; } ;
struct TYPE_2__ {int m_rmw_cnt; } ;


 int HTC_FWFLAG_NO_RMW ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_reg_rmw_buffer (void*,int ,int ,int ) ;
 int ath9k_reg_rmw_single (void*,int ,int ,int ) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 ath9k_reg_rmw(void *hw_priv, u32 reg_offset, u32 set, u32 clr)
{
 struct ath_hw *ah = hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

 if (test_bit(HTC_FWFLAG_NO_RMW, &priv->fw_flags)) {
  u32 val;

  val = REG_READ(ah, reg_offset);
  val &= ~clr;
  val |= set;
  REG_WRITE(ah, reg_offset, val);

  return 0;
 }

 if (atomic_read(&priv->wmi->m_rmw_cnt))
  ath9k_reg_rmw_buffer(hw_priv, reg_offset, set, clr);
 else
  ath9k_reg_rmw_single(hw_priv, reg_offset, set, clr);

 return 0;
}
