
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; } ;


 int MIF_CONFIG ;
 int MIF_CONFIG_INDIRECT_MODE ;
 int NIU_FLAGS_HOTPLUG_PHY ;
 int NIU_FLAGS_HOTPLUG_PHY_PRESENT ;
 int XMAC_CONFIG ;
 int XMAC_CONFIG_FORCE_LED_ON ;
 int XMAC_CONFIG_LED_POLARITY ;
 int bcm8704_reset (struct niu*) ;
 int bcm8706_init_user_dev3 (struct niu*) ;
 int nr64 (int ) ;
 int nr64_mac (int ) ;
 int nw64 (int ,int ) ;
 int nw64_mac (int ,int ) ;
 int xcvr_10g_set_lb_bcm870x (struct niu*) ;
 int xcvr_diag_bcm870x (struct niu*) ;

__attribute__((used)) static int xcvr_init_10g_bcm8706(struct niu *np)
{
 int err = 0;
 u64 val;

 if ((np->flags & NIU_FLAGS_HOTPLUG_PHY) &&
     (np->flags & NIU_FLAGS_HOTPLUG_PHY_PRESENT) == 0)
   return err;

 val = nr64_mac(XMAC_CONFIG);
 val &= ~XMAC_CONFIG_LED_POLARITY;
 val |= XMAC_CONFIG_FORCE_LED_ON;
 nw64_mac(XMAC_CONFIG, val);

 val = nr64(MIF_CONFIG);
 val |= MIF_CONFIG_INDIRECT_MODE;
 nw64(MIF_CONFIG, val);

 err = bcm8704_reset(np);
 if (err)
  return err;

 err = xcvr_10g_set_lb_bcm870x(np);
 if (err)
  return err;

 err = bcm8706_init_user_dev3(np);
 if (err)
  return err;

 err = xcvr_diag_bcm870x(np);
 if (err)
  return err;

 return 0;
}
