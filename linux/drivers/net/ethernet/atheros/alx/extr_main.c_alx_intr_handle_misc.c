
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alx_hw {int dummy; } ;
struct alx_priv {int int_mask; int dev; struct alx_hw hw; } ;


 int ALX_IMR ;
 int ALX_ISR_ALERT ;
 int ALX_ISR_FATAL ;
 int ALX_ISR_PHY ;
 int alx_schedule_link_check (struct alx_priv*) ;
 int alx_schedule_reset (struct alx_priv*) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;
 int netdev_warn (int ,char*,int) ;
 int netif_warn (struct alx_priv*,struct alx_hw*,int ,char*,int) ;

__attribute__((used)) static bool alx_intr_handle_misc(struct alx_priv *alx, u32 intr)
{
 struct alx_hw *hw = &alx->hw;

 if (intr & ALX_ISR_FATAL) {
  netif_warn(alx, hw, alx->dev,
      "fatal interrupt 0x%x, resetting\n", intr);
  alx_schedule_reset(alx);
  return 1;
 }

 if (intr & ALX_ISR_ALERT)
  netdev_warn(alx->dev, "alert interrupt: 0x%x\n", intr);

 if (intr & ALX_ISR_PHY) {




  alx->int_mask &= ~ALX_ISR_PHY;
  alx_write_mem32(hw, ALX_IMR, alx->int_mask);
  alx_schedule_link_check(alx);
 }

 return 0;
}
