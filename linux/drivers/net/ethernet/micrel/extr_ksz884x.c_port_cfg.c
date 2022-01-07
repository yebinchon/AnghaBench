
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 int PORT_CTRL_ADDR (int,scalar_t__) ;
 int readw (scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void port_cfg(struct ksz_hw *hw, int port, int offset, u16 bits,
 int set)
{
 u32 addr;
 u16 data;

 PORT_CTRL_ADDR(port, addr);
 addr += offset;
 data = readw(hw->io + addr);
 if (set)
  data |= bits;
 else
  data &= ~bits;
 writew(data, hw->io + addr);
}
