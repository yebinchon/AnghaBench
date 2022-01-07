
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_hw {int duplex; int link_speed; } ;
struct alx_priv {struct alx_hw hw; } ;


 int DUPLEX_UNKNOWN ;
 int SPEED_UNKNOWN ;
 int alx_enable_aspm (struct alx_hw*,int,int) ;
 int alx_free_buffers (struct alx_priv*) ;
 int alx_irq_disable (struct alx_priv*) ;
 int alx_netif_stop (struct alx_priv*) ;
 int alx_reset_mac (struct alx_hw*) ;

__attribute__((used)) static void alx_halt(struct alx_priv *alx)
{
 struct alx_hw *hw = &alx->hw;

 alx_netif_stop(alx);
 hw->link_speed = SPEED_UNKNOWN;
 hw->duplex = DUPLEX_UNKNOWN;

 alx_reset_mac(hw);


 alx_enable_aspm(hw, 0, 0);
 alx_irq_disable(alx);
 alx_free_buffers(alx);
}
