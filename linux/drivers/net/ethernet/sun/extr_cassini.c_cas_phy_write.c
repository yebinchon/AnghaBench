
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cas {int phy_addr; scalar_t__ regs; } ;


 int CAS_BASE (int ,int) ;
 int MIF_FRAME_DATA_MASK ;
 int MIF_FRAME_OP_WRITE ;
 int MIF_FRAME_PHY_ADDR ;
 int MIF_FRAME_REG_ADDR ;
 int MIF_FRAME_ST ;
 int MIF_FRAME_TURN_AROUND_LSB ;
 int MIF_FRAME_TURN_AROUND_MSB ;
 scalar_t__ REG_MIF_FRAME ;
 int STOP_TRIES_PHY ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cas_phy_write(struct cas *cp, int reg, u16 val)
{
 int limit = STOP_TRIES_PHY;
 u32 cmd;

 cmd = MIF_FRAME_ST | MIF_FRAME_OP_WRITE;
 cmd |= CAS_BASE(MIF_FRAME_PHY_ADDR, cp->phy_addr);
 cmd |= CAS_BASE(MIF_FRAME_REG_ADDR, reg);
 cmd |= MIF_FRAME_TURN_AROUND_MSB;
 cmd |= val & MIF_FRAME_DATA_MASK;
 writel(cmd, cp->regs + REG_MIF_FRAME);


 while (limit-- > 0) {
  udelay(10);
  cmd = readl(cp->regs + REG_MIF_FRAME);
  if (cmd & MIF_FRAME_TURN_AROUND_LSB)
   return 0;
 }
 return -1;
}
