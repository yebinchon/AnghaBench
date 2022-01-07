
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_val_pair {int val; scalar_t__ reg_addr; } ;
struct adapter {int dummy; } ;


 int t3_write_reg (struct adapter*,scalar_t__,int ) ;

void t3_write_regs(struct adapter *adapter, const struct addr_val_pair *p,
     int n, unsigned int offset)
{
 while (n--) {
  t3_write_reg(adapter, p->reg_addr + offset, p->val);
  p++;
 }
}
