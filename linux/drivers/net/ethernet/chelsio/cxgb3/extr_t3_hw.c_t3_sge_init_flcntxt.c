
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
 int F_FREELIST ;
 unsigned int M_FL_ENTRY_SIZE_LO ;
 unsigned int M_FL_INDEX_LO ;
 int S_FL_ENTRY_SIZE_LO ;
 int V_FL_BASE_HI (int ) ;
 int V_FL_CONG_THRES (unsigned int) ;
 int V_FL_ENTRY_SIZE_HI (unsigned int) ;
 int V_FL_ENTRY_SIZE_LO (unsigned int) ;
 int V_FL_GEN (int) ;
 int V_FL_GTS (int) ;
 int V_FL_INDEX_HI (unsigned int) ;
 int V_FL_INDEX_LO (unsigned int) ;
 int V_FL_SIZE (unsigned int) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_sge_write_context (struct adapter*,unsigned int,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

int t3_sge_init_flcntxt(struct adapter *adapter, unsigned int id,
   int gts_enable, u64 base_addr, unsigned int size,
   unsigned int bsize, unsigned int cong_thres, int gen,
   unsigned int cidx)
{
 if (base_addr & 0xfff)
  return -EINVAL;
 if (t3_read_reg(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 base_addr >>= 12;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA0, base_addr);
 base_addr >>= 32;
 t3_write_reg(adapter, A_SG_CONTEXT_DATA1,
       V_FL_BASE_HI((u32) base_addr) |
       V_FL_INDEX_LO(cidx & M_FL_INDEX_LO));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA2, V_FL_SIZE(size) |
       V_FL_GEN(gen) | V_FL_INDEX_HI(cidx >> 12) |
       V_FL_ENTRY_SIZE_LO(bsize & M_FL_ENTRY_SIZE_LO));
 t3_write_reg(adapter, A_SG_CONTEXT_DATA3,
       V_FL_ENTRY_SIZE_HI(bsize >> (32 - S_FL_ENTRY_SIZE_LO)) |
       V_FL_CONG_THRES(cong_thres) | V_FL_GTS(gts_enable));
 return t3_sge_write_context(adapter, id, F_FREELIST);
}
