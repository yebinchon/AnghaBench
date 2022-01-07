
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
struct xgbe_i2c_op {unsigned int target; unsigned int len; void* buf; int cmd; } ;


 int EAGAIN ;
 int XGBE_I2C_CMD_WRITE ;
 int xgbe_phy_i2c_xfer (struct xgbe_prv_data*,struct xgbe_i2c_op*) ;

__attribute__((used)) static int xgbe_phy_i2c_write(struct xgbe_prv_data *pdata, unsigned int target,
         void *val, unsigned int val_len)
{
 struct xgbe_i2c_op i2c_op;
 int retry, ret;

 retry = 1;
again:

 i2c_op.cmd = XGBE_I2C_CMD_WRITE;
 i2c_op.target = target;
 i2c_op.len = val_len;
 i2c_op.buf = val;
 ret = xgbe_phy_i2c_xfer(pdata, &i2c_op);
 if ((ret == -EAGAIN) && retry--)
  goto again;

 return ret;
}
