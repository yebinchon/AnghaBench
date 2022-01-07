
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ sfp_comm; int sfp_mux_address; } ;
struct xgbe_i2c_op {int len; scalar_t__* buf; int target; int cmd; } ;
typedef int mux_channel ;


 int XGBE_I2C_CMD_WRITE ;
 scalar_t__ XGBE_SFP_COMM_DIRECT ;
 int xgbe_phy_i2c_xfer (struct xgbe_prv_data*,struct xgbe_i2c_op*) ;

__attribute__((used)) static int xgbe_phy_sfp_put_mux(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 struct xgbe_i2c_op i2c_op;
 u8 mux_channel;

 if (phy_data->sfp_comm == XGBE_SFP_COMM_DIRECT)
  return 0;


 mux_channel = 0;
 i2c_op.cmd = XGBE_I2C_CMD_WRITE;
 i2c_op.target = phy_data->sfp_mux_address;
 i2c_op.len = sizeof(mux_channel);
 i2c_op.buf = &mux_channel;

 return xgbe_phy_i2c_xfer(pdata, &i2c_op);
}
