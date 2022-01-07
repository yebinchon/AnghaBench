
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int t4_write_reg (struct adapter*,unsigned int,int ) ;

void t4_write_indirect(struct adapter *adap, unsigned int addr_reg,
         unsigned int data_reg, const u32 *vals,
         unsigned int nregs, unsigned int start_idx)
{
 while (nregs--) {
  t4_write_reg(adap, addr_reg, start_idx++);
  t4_write_reg(adap, data_reg, *vals++);
 }
}
