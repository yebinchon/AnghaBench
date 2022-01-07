
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_MASK0 ;
 int A_SG_CONTEXT_MASK1 ;
 int A_SG_CONTEXT_MASK2 ;
 int A_SG_CONTEXT_MASK3 ;
 int F_CONTEXT_CMD_BUSY ;
 unsigned int F_RESPONSEQ ;
 int SG_CONTEXT_CMD_ATTEMPTS ;
 unsigned int V_CONTEXT (unsigned int) ;
 unsigned int V_CONTEXT_CMD_OPCODE (int) ;
 int t3_wait_op_done (struct adapter*,int ,int ,int ,int ,int) ;
 int t3_write_reg (struct adapter*,int ,unsigned int) ;

__attribute__((used)) static int t3_sge_write_context(struct adapter *adapter, unsigned int id,
    unsigned int type)
{
 if (type == F_RESPONSEQ) {






  t3_write_reg(adapter, A_SG_CONTEXT_MASK0, 0xffffffff);
  t3_write_reg(adapter, A_SG_CONTEXT_MASK1, 0xffffffff);
  t3_write_reg(adapter, A_SG_CONTEXT_MASK2, 0x17ffffff);
  t3_write_reg(adapter, A_SG_CONTEXT_MASK3, 0xffffffff);
 } else {
  t3_write_reg(adapter, A_SG_CONTEXT_MASK0, 0xffffffff);
  t3_write_reg(adapter, A_SG_CONTEXT_MASK1, 0xffffffff);
  t3_write_reg(adapter, A_SG_CONTEXT_MASK2, 0xffffffff);
  t3_write_reg(adapter, A_SG_CONTEXT_MASK3, 0xffffffff);
 }
 t3_write_reg(adapter, A_SG_CONTEXT_CMD,
       V_CONTEXT_CMD_OPCODE(1) | type | V_CONTEXT(id));
 return t3_wait_op_done(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY,
          0, SG_CONTEXT_CMD_ATTEMPTS, 1);
}
