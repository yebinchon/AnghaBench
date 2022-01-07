
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int port; int ipp_off; int pcs_off; int xpcs_off; int device; scalar_t__ regs; scalar_t__ mac_regs; } ;


 scalar_t__ BMAC_PORT2_OFF ;
 scalar_t__ BMAC_PORT3_OFF ;
 int EINVAL ;
 scalar_t__ XMAC_PORT0_OFF ;
 scalar_t__ XMAC_PORT1_OFF ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int niu_init_mac_ipp_pcs_base(struct niu *np)
{
 switch (np->port) {
 case 0:
  np->mac_regs = np->regs + XMAC_PORT0_OFF;
  np->ipp_off = 0x00000;
  np->pcs_off = 0x04000;
  np->xpcs_off = 0x02000;
  break;

 case 1:
  np->mac_regs = np->regs + XMAC_PORT1_OFF;
  np->ipp_off = 0x08000;
  np->pcs_off = 0x0a000;
  np->xpcs_off = 0x08000;
  break;

 case 2:
  np->mac_regs = np->regs + BMAC_PORT2_OFF;
  np->ipp_off = 0x04000;
  np->pcs_off = 0x0e000;
  np->xpcs_off = ~0UL;
  break;

 case 3:
  np->mac_regs = np->regs + BMAC_PORT3_OFF;
  np->ipp_off = 0x0c000;
  np->pcs_off = 0x12000;
  np->xpcs_off = ~0UL;
  break;

 default:
  dev_err(np->device, "Port %u is invalid, cannot compute MAC block offset\n", np->port);
  return -EINVAL;
 }

 return 0;
}
