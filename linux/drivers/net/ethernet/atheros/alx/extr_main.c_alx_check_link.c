
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_hw {int link_speed; } ;
struct alx_priv {int dev; int irq_lock; int int_mask; struct alx_hw hw; } ;


 int ALX_IMR ;
 int ALX_ISR_PHY ;
 int SPEED_UNKNOWN ;
 int alx_clear_phy_intr (struct alx_hw*) ;
 int alx_configure (struct alx_priv*) ;
 int alx_enable_aspm (struct alx_hw*,int,int) ;
 int alx_irq_disable (struct alx_priv*) ;
 int alx_irq_enable (struct alx_priv*) ;
 int alx_netif_start (struct alx_priv*) ;
 int alx_netif_stop (struct alx_priv*) ;
 int alx_post_phy_link (struct alx_hw*) ;
 int alx_read_phy_link (struct alx_hw*) ;
 int alx_reinit_rings (struct alx_priv*) ;
 int alx_reset_mac (struct alx_hw*) ;
 int alx_schedule_reset (struct alx_priv*) ;
 int alx_speed_desc (struct alx_hw*) ;
 int alx_start_mac (struct alx_hw*) ;
 int alx_write_mem32 (struct alx_hw*,int ,int ) ;
 int link ;
 int netif_info (struct alx_priv*,int ,int ,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void alx_check_link(struct alx_priv *alx)
{
 struct alx_hw *hw = &alx->hw;
 unsigned long flags;
 int old_speed;
 int err;




 alx_clear_phy_intr(hw);

 old_speed = hw->link_speed;
 err = alx_read_phy_link(hw);
 if (err < 0)
  goto reset;

 spin_lock_irqsave(&alx->irq_lock, flags);
 alx->int_mask |= ALX_ISR_PHY;
 alx_write_mem32(hw, ALX_IMR, alx->int_mask);
 spin_unlock_irqrestore(&alx->irq_lock, flags);

 if (old_speed == hw->link_speed)
  return;

 if (hw->link_speed != SPEED_UNKNOWN) {
  netif_info(alx, link, alx->dev,
      "NIC Up: %s\n", alx_speed_desc(hw));
  alx_post_phy_link(hw);
  alx_enable_aspm(hw, 1, 1);
  alx_start_mac(hw);

  if (old_speed == SPEED_UNKNOWN)
   alx_netif_start(alx);
 } else {

  alx_netif_stop(alx);
  netif_info(alx, link, alx->dev, "Link Down\n");
  err = alx_reset_mac(hw);
  if (err)
   goto reset;
  alx_irq_disable(alx);


  err = alx_reinit_rings(alx);
  if (err)
   goto reset;
  alx_configure(alx);
  alx_enable_aspm(hw, 0, 1);
  alx_post_phy_link(hw);
  alx_irq_enable(alx);
 }

 return;

reset:
 alx_schedule_reset(alx);
}
