
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_mac {int dummy; } ;


 int PAS_MAC_CFG_PCFG ;
 unsigned int PAS_MAC_CFG_PCFG_PE ;
 unsigned int read_mac_reg (struct pasemi_mac*,int ) ;
 int write_mac_reg (struct pasemi_mac*,int ,unsigned int) ;

__attribute__((used)) static void pasemi_mac_intf_disable(struct pasemi_mac *mac)
{
 unsigned int flags;

 flags = read_mac_reg(mac, PAS_MAC_CFG_PCFG);
 flags &= ~PAS_MAC_CFG_PCFG_PE;
 write_mac_reg(mac, PAS_MAC_CFG_PCFG, flags);
}
