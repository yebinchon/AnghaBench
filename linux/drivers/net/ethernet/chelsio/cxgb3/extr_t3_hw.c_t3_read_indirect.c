
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int t3_read_reg (struct adapter*,unsigned int) ;
 int t3_write_reg (struct adapter*,unsigned int,unsigned int) ;

__attribute__((used)) static void t3_read_indirect(struct adapter *adap, unsigned int addr_reg,
        unsigned int data_reg, u32 *vals,
        unsigned int nregs, unsigned int start_idx)
{
 while (nregs--) {
  t3_write_reg(adap, addr_reg, start_idx);
  *vals++ = t3_read_reg(adap, data_reg);
  start_idx++;
 }
}
