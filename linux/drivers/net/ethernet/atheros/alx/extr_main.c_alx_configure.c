
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_hw {int rx_ctrl; } ;
struct alx_priv {int dev; struct alx_hw hw; } ;


 int ALX_MAC_CTRL ;
 int __alx_set_rx_mode (int ) ;
 int alx_configure_basic (struct alx_hw*) ;
 int alx_disable_rss (struct alx_hw*) ;
 int alx_write_mem32 (struct alx_hw*,int ,int ) ;

__attribute__((used)) static void alx_configure(struct alx_priv *alx)
{
 struct alx_hw *hw = &alx->hw;

 alx_configure_basic(hw);
 alx_disable_rss(hw);
 __alx_set_rx_mode(alx->dev);

 alx_write_mem32(hw, ALX_MAC_CTRL, hw->rx_ctrl);
}
