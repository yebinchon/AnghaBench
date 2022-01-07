
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int BIR_V (int ) ;
 int MEMWIN0_APERTURE ;
 int PCIE_MEM_ACCESS_BASE_WIN_A ;
 int PCIE_MEM_ACCESS_REG (int ,int) ;
 scalar_t__ WINDOW_SHIFT_X ;
 int WINDOW_V (scalar_t__) ;
 scalar_t__ ilog2 (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_setup_memwin(struct adapter *adap, u32 memwin_base, u32 window)
{
 t4_write_reg(adap,
       PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_BASE_WIN_A, window),
       memwin_base | BIR_V(0) |
       WINDOW_V(ilog2(MEMWIN0_APERTURE) - WINDOW_SHIFT_X));
 t4_read_reg(adap,
      PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_BASE_WIN_A, window));
}
