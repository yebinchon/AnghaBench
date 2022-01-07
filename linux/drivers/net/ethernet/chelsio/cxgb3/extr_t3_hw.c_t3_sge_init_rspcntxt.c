
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int A_SG_CONTEXT_CMD ;
 int A_SG_CONTEXT_DATA0 ;
 int A_SG_CONTEXT_DATA1 ;
 int A_SG_CONTEXT_DATA2 ;
 int A_SG_CONTEXT_DATA3 ;
 int EBUSY ;
 int EINVAL ;
 int F_CONTEXT_CMD_BUSY ;
 int F_RESPONSEQ ;
 unsigned int F_RQ_INTR_EN ;
 unsigned int V_CQ_BASE_HI (int ) ;
 unsigned int V_CQ_INDEX (unsigned int) ;
 unsigned int V_CQ_SIZE (unsigned int) ;
 unsigned int V_RQ_GEN (int) ;
 unsigned int V_RQ_MSI_VEC (int) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_sge_write_context (struct adapter*,unsigned int,int ) ;
 int t3_write_reg (struct adapter*,int ,unsigned int) ;

int t3_sge_init_rspcntxt(struct adapter *adapter, unsigned int id,
    int irq_vec_idx, u64 base_addr, unsigned int size,
    unsigned int fl_thres, int gen, unsigned int cidx)
{
 unsigned int intr = 0;

 if (base_addr & 0xfff)
  return -EINVAL;
 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 base_addr >>= 12;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA0, V_CQ_SIZE(size) |
       V_CQ_INDEX(cidx));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA1, base_addr);
 base_addr >>= 32;
 if (irq_vec_idx >= 0)
  intr = V_RQ_MSI_VEC(irq_vec_idx) | F_RQ_INTR_EN;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA2,
       V_CQ_BASE_HI((u32) base_addr) | intr | V_RQ_GEN(gen));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA3, fl_thres);
 return t3_sge_write_context(adapter, id, F_RESPONSEQ);
}
