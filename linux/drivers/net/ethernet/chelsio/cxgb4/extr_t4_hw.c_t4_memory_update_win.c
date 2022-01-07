
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int PCIE_MEM_ACCESS_OFFSET_A ;
 int PCIE_MEM_ACCESS_REG (int ,int) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

void t4_memory_update_win(struct adapter *adap, int win, u32 addr)
{
 t4_write_reg(adap,
       PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_OFFSET_A, win),
       addr);



 t4_read_reg(adap,
      PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_OFFSET_A, win));
}
