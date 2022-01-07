
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cas {scalar_t__ regs; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAC_RX_CFG_HASH_FILTER_EN ;
 int MAC_RX_CFG_PROMISC_EN ;
 scalar_t__ REG_MAC_HASH_TABLEN (int) ;
 int cas_process_mc_list (struct cas*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static u32 cas_setup_multicast(struct cas *cp)
{
 u32 rxcfg = 0;
 int i;

 if (cp->dev->flags & IFF_PROMISC) {
  rxcfg |= MAC_RX_CFG_PROMISC_EN;

 } else if (cp->dev->flags & IFF_ALLMULTI) {
      for (i=0; i < 16; i++)
   writel(0xFFFF, cp->regs + REG_MAC_HASH_TABLEN(i));
  rxcfg |= MAC_RX_CFG_HASH_FILTER_EN;

 } else {
  cas_process_mc_list(cp);
  rxcfg |= MAC_RX_CFG_HASH_FILTER_EN;
 }

 return rxcfg;
}
