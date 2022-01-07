
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int IC_CON ;
 int MASTER_MODE ;
 int RESTART_EN ;
 int RX_FIFO_FULL_HOLD ;
 int SLAVE_DISABLE ;
 int SPEED ;
 int XGBE_STD_SPEED ;
 unsigned int XI2C_IOREAD (struct xgbe_prv_data*,int ) ;
 int XI2C_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XI2C_SET_BITS (unsigned int,int ,int ,int) ;

__attribute__((used)) static void xgbe_i2c_set_mode(struct xgbe_prv_data *pdata)
{
 unsigned int reg;

 reg = XI2C_IOREAD(pdata, IC_CON);
 XI2C_SET_BITS(reg, IC_CON, MASTER_MODE, 1);
 XI2C_SET_BITS(reg, IC_CON, SLAVE_DISABLE, 1);
 XI2C_SET_BITS(reg, IC_CON, RESTART_EN, 1);
 XI2C_SET_BITS(reg, IC_CON, SPEED, XGBE_STD_SPEED);
 XI2C_SET_BITS(reg, IC_CON, RX_FIFO_FULL_HOLD, 1);
 XI2C_IOWRITE(pdata, IC_CON, reg);
}
