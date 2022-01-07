
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int swintr; int flags; } ;
typedef int irqreturn_t ;


 int CXGB4_MASTER_PF ;
 int IRQ_HANDLED ;
 int MYPF_REG (int ) ;
 int PFSW_F ;
 int PL_PF_INT_CAUSE_A ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_slow_intr_handler (struct adapter*) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static irqreturn_t t4_nondata_intr(int irq, void *cookie)
{
 struct adapter *adap = cookie;
 u32 v = t4_read_reg(adap, MYPF_REG(PL_PF_INT_CAUSE_A));

 if (v & PFSW_F) {
  adap->swintr = 1;
  t4_write_reg(adap, MYPF_REG(PL_PF_INT_CAUSE_A), v);
 }
 if (adap->flags & CXGB4_MASTER_PF)
  t4_slow_intr_handler(adap);
 return IRQ_HANDLED;
}
