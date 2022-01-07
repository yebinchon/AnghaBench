
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ksz_hw {scalar_t__ io; } ;


 scalar_t__ KS8842_PORT_IN_RATE_OFFSET ;
 int PORT_CTRL_ADDR (int,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sw_dis_prio_rate(struct ksz_hw *hw, int port)
{
 u32 addr;

 PORT_CTRL_ADDR(port, addr);
 addr += KS8842_PORT_IN_RATE_OFFSET;
 writel(0, hw->io + addr);
}
