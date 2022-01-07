
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 scalar_t__ KS8842_PORT_CTRL_VID_OFFSET ;
 int PORT_CTRL_ADDR (int,scalar_t__) ;
 int readw (scalar_t__) ;

__attribute__((used)) static void port_get_def_vid(struct ksz_hw *hw, int port, u16 *vid)
{
 u32 addr;

 PORT_CTRL_ADDR(port, addr);
 addr += KS8842_PORT_CTRL_VID_OFFSET;
 *vid = readw(hw->io + addr);
}
