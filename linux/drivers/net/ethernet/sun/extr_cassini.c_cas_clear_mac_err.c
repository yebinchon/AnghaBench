
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {scalar_t__ regs; } ;


 scalar_t__ REG_MAC_ALIGN_ERR ;
 scalar_t__ REG_MAC_ATTEMPTS_PEAK ;
 scalar_t__ REG_MAC_COLL_EXCESS ;
 scalar_t__ REG_MAC_COLL_FIRST ;
 scalar_t__ REG_MAC_COLL_LATE ;
 scalar_t__ REG_MAC_COLL_NORMAL ;
 scalar_t__ REG_MAC_FCS_ERR ;
 scalar_t__ REG_MAC_LEN_ERR ;
 scalar_t__ REG_MAC_RECV_FRAME ;
 scalar_t__ REG_MAC_RX_CODE_ERR ;
 scalar_t__ REG_MAC_TIMER_DEFER ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void cas_clear_mac_err(struct cas *cp)
{
 writel(0, cp->regs + REG_MAC_COLL_NORMAL);
 writel(0, cp->regs + REG_MAC_COLL_FIRST);
 writel(0, cp->regs + REG_MAC_COLL_EXCESS);
 writel(0, cp->regs + REG_MAC_COLL_LATE);
 writel(0, cp->regs + REG_MAC_TIMER_DEFER);
 writel(0, cp->regs + REG_MAC_ATTEMPTS_PEAK);
 writel(0, cp->regs + REG_MAC_RECV_FRAME);
 writel(0, cp->regs + REG_MAC_LEN_ERR);
 writel(0, cp->regs + REG_MAC_ALIGN_ERR);
 writel(0, cp->regs + REG_MAC_FCS_ERR);
 writel(0, cp->regs + REG_MAC_RX_CODE_ERR);
}
