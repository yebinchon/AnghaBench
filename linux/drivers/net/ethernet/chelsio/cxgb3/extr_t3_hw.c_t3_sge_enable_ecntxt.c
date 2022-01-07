
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_DATA3 ;
 int A_SG_CONTEXT_MASK0 ;
 int A_SG_CONTEXT_MASK1 ;
 int A_SG_CONTEXT_MASK2 ;
 int A_SG_CONTEXT_MASK3 ;
 int EBUSY ;
 int F_CONTEXT_CMD_BUSY ;
 int F_EC_VALID ;
 int F_EGRESS ;
 int SG_CONTEXT_CMD_ATTEMPTS ;
 int V_CONTEXT (unsigned int) ;
 int V_CONTEXT_CMD_OPCODE (int) ;
 int V_EC_VALID (int) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_wait_op_done (struct adapter*,int ,int,int ,int ,int) ;
 int t3_write_reg (struct adapter*,int ,int) ;

int t3_sge_enable_ecntxt(struct adapter *adapter, unsigned int id, int enable)
{
 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 t3_write_reg(adapter, A_SG_CONTEXT_MASK0, 0);
 t3_write_reg(adapter, A_SG_CONTEXT_MASK1, 0);
 t3_write_reg(adapter, A_SG_CONTEXT_MASK2, 0);
 t3_write_reg(adapter, A_SG_CONTEXT_MASK3, F_EC_VALID);
 t3_write_reg(adapter, A_SG_CONTEXT_DATA3, V_EC_VALID(enable));
 t3_write_reg(adapter, A_SG_CONTEXT_CMD,
       V_CONTEXT_CMD_OPCODE(1) | F_EGRESS | V_CONTEXT(id));
 return t3_wait_op_done(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY,
          0, SG_CONTEXT_CMD_ATTEMPTS, 1);
}
