
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sge_qbase_reg_field {size_t** pf_data_value; size_t** vf_data_value; int * reg_data; int reg_addr; } ;
struct adapter {int dummy; } ;


 size_t SGE_QBASE_DATA_REG_NUM ;
 size_t t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,size_t) ;

__attribute__((used)) static void cudbg_read_sge_qbase_indirect_reg(struct adapter *padap,
           struct sge_qbase_reg_field *qbase,
           u32 func, bool is_pf)
{
 u32 *buff, i;

 if (is_pf) {
  buff = qbase->pf_data_value[func];
 } else {
  buff = qbase->vf_data_value[func];



  func += 8;
 }

 t4_write_reg(padap, qbase->reg_addr, func);
 for (i = 0; i < SGE_QBASE_DATA_REG_NUM; i++, buff++)
  *buff = t4_read_reg(padap, qbase->reg_data[i]);
}
