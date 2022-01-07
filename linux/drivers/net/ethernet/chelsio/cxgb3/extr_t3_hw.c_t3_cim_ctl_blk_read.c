
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_CIM_HOST_ACC_CTRL ;
 int A_CIM_HOST_ACC_DATA ;
 scalar_t__ CIM_CTL_BASE ;
 int EBUSY ;
 int F_HOSTBUSY ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_wait_op_done (struct adapter*,int ,int,int ,int,int) ;
 int t3_write_reg (struct adapter*,int ,scalar_t__) ;

int t3_cim_ctl_blk_read(struct adapter *adap, unsigned int addr,
   unsigned int n, unsigned int *valp)
{
 int ret = 0;

 if (t3_read_reg(adap, A_CIM_HOST_ACC_CTRL) & F_HOSTBUSY)
  return -EBUSY;

 for ( ; !ret && n--; addr += 4) {
  t3_write_reg(adap, A_CIM_HOST_ACC_CTRL, CIM_CTL_BASE + addr);
  ret = t3_wait_op_done(adap, A_CIM_HOST_ACC_CTRL, F_HOSTBUSY,
          0, 5, 2);
  if (!ret)
   *valp++ = t3_read_reg(adap, A_CIM_HOST_ACC_DATA);
 }
 return ret;
}
