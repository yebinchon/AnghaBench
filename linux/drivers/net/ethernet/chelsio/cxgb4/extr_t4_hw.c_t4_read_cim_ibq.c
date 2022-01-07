
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int CIM_IBQ_DBG_CFG_A ;
 int CIM_IBQ_DBG_DATA_A ;
 int CIM_IBQ_SIZE ;
 int EINVAL ;
 int IBQDBGADDR_V (unsigned int) ;
 int IBQDBGBUSY_F ;
 int IBQDBGEN_F ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_wait_op_done (struct adapter*,int ,int ,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

int t4_read_cim_ibq(struct adapter *adap, unsigned int qid, u32 *data, size_t n)
{
 int i, err, attempts;
 unsigned int addr;
 const unsigned int nwords = CIM_IBQ_SIZE * 4;

 if (qid > 5 || (n & 3))
  return -EINVAL;

 addr = qid * nwords;
 if (n > nwords)
  n = nwords;




 attempts = 1000000;

 for (i = 0; i < n; i++, addr++) {
  t4_write_reg(adap, CIM_IBQ_DBG_CFG_A, IBQDBGADDR_V(addr) |
        IBQDBGEN_F);
  err = t4_wait_op_done(adap, CIM_IBQ_DBG_CFG_A, IBQDBGBUSY_F, 0,
          attempts, 1);
  if (err)
   return err;
  *data++ = t4_read_reg(adap, CIM_IBQ_DBG_DATA_A);
 }
 t4_write_reg(adap, CIM_IBQ_DBG_CFG_A, 0);
 return i;
}
