
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int CIMQBASE_G (unsigned int) ;
 int CIMQSIZE_G (unsigned int) ;
 int CIM_NUM_OBQ ;
 int CIM_NUM_OBQ_T5 ;
 int CIM_OBQ_DBG_CFG_A ;
 int CIM_OBQ_DBG_DATA_A ;
 int CIM_QUEUE_CONFIG_CTRL_A ;
 int CIM_QUEUE_CONFIG_REF_A ;
 int EINVAL ;
 int OBQDBGADDR_V (unsigned int) ;
 int OBQDBGBUSY_F ;
 int OBQDBGEN_F ;
 int OBQSELECT_F ;
 int QUENUMSELECT_V (unsigned int) ;
 scalar_t__ is_t4 (int ) ;
 void* t4_read_reg (struct adapter*,int ) ;
 int t4_wait_op_done (struct adapter*,int ,int ,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

int t4_read_cim_obq(struct adapter *adap, unsigned int qid, u32 *data, size_t n)
{
 int i, err;
 unsigned int addr, v, nwords;
 int cim_num_obq = is_t4(adap->params.chip) ?
    CIM_NUM_OBQ : CIM_NUM_OBQ_T5;

 if ((qid > (cim_num_obq - 1)) || (n & 3))
  return -EINVAL;

 t4_write_reg(adap, CIM_QUEUE_CONFIG_REF_A, OBQSELECT_F |
       QUENUMSELECT_V(qid));
 v = t4_read_reg(adap, CIM_QUEUE_CONFIG_CTRL_A);

 addr = CIMQBASE_G(v) * 64;
 nwords = CIMQSIZE_G(v) * 64;
 if (n > nwords)
  n = nwords;

 for (i = 0; i < n; i++, addr++) {
  t4_write_reg(adap, CIM_OBQ_DBG_CFG_A, OBQDBGADDR_V(addr) |
        OBQDBGEN_F);
  err = t4_wait_op_done(adap, CIM_OBQ_DBG_CFG_A, OBQDBGBUSY_F, 0,
          2, 1);
  if (err)
   return err;
  *data++ = t4_read_reg(adap, CIM_OBQ_DBG_DATA_A);
 }
 t4_write_reg(adap, CIM_OBQ_DBG_CFG_A, 0);
 return i;
}
