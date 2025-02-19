
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int BYTECNT_V (unsigned int) ;
 int EBUSY ;
 int EINVAL ;
 int OP_V (int) ;
 int SF_ATTEMPTS ;
 int SF_BUSY_F ;
 int SF_CONT_V (int) ;
 int SF_DATA_A ;
 int SF_LOCK_V (int) ;
 int SF_OP_A ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_wait_op_done (struct adapter*,int ,int,int ,int ,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int sf1_write(struct adapter *adapter, unsigned int byte_cnt, int cont,
       int lock, u32 val)
{
 if (!byte_cnt || byte_cnt > 4)
  return -EINVAL;
 if (t4_read_reg(adapter, SF_OP_A) & SF_BUSY_F)
  return -EBUSY;
 t4_write_reg(adapter, SF_DATA_A, val);
 t4_write_reg(adapter, SF_OP_A, SF_LOCK_V(lock) |
       SF_CONT_V(cont) | BYTECNT_V(byte_cnt - 1) | OP_V(1));
 return t4_wait_op_done(adapter, SF_OP_A, SF_BUSY_F, 0, SF_ATTEMPTS, 5);
}
