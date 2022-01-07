
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int CIM_HOST_ACC_CTRL_A ;
 int CIM_HOST_ACC_DATA_A ;
 int EBUSY ;
 int HOSTBUSY_F ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_wait_op_done (struct adapter*,int ,int,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

int t4_cim_read(struct adapter *adap, unsigned int addr, unsigned int n,
  unsigned int *valp)
{
 int ret = 0;

 if (t4_read_reg(adap, CIM_HOST_ACC_CTRL_A) & HOSTBUSY_F)
  return -EBUSY;

 for ( ; !ret && n--; addr += 4) {
  t4_write_reg(adap, CIM_HOST_ACC_CTRL_A, addr);
  ret = t4_wait_op_done(adap, CIM_HOST_ACC_CTRL_A, HOSTBUSY_F,
          0, 5, 2);
  if (!ret)
   *valp++ = t4_read_reg(adap, CIM_HOST_ACC_DATA_A);
 }
 return ret;
}
