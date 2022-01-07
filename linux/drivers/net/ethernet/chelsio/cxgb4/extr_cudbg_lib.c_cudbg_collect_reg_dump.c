
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int size; scalar_t__ data; int member_0; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int T4_REGMAP_SIZE ;
 int T5_REGMAP_SIZE ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int ,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 scalar_t__ is_t4 (int ) ;
 scalar_t__ is_t5 (int ) ;
 scalar_t__ is_t6 (int ) ;
 int t4_get_regs (struct adapter*,void*,int ) ;

int cudbg_collect_reg_dump(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *dbg_buff,
      struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 u32 buf_size = 0;
 int rc = 0;

 if (is_t4(padap->params.chip))
  buf_size = T4_REGMAP_SIZE;
 else if (is_t5(padap->params.chip) || is_t6(padap->params.chip))
  buf_size = T5_REGMAP_SIZE;

 rc = cudbg_get_buff(pdbg_init, dbg_buff, buf_size, &temp_buff);
 if (rc)
  return rc;
 t4_get_regs(padap, (void *)temp_buff.data, temp_buff.size);
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
