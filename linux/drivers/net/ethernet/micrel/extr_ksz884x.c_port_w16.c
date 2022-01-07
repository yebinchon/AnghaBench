
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 int PORT_CTRL_ADDR (int,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void port_w16(struct ksz_hw *hw, int port, int offset, u16 data)
{
 u32 addr;

 PORT_CTRL_ADDR(port, addr);
 addr += offset;
 writew(data, hw->io + addr);
}
