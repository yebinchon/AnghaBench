
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_berr_counter {unsigned int rxerr; unsigned int txerr; } ;
struct c_can_priv {unsigned int (* read_reg ) (struct c_can_priv*,int ) ;} ;


 int C_CAN_ERR_CNT_REG ;
 unsigned int ERR_CNT_REC_MASK ;
 unsigned int ERR_CNT_REC_SHIFT ;
 unsigned int ERR_CNT_TEC_MASK ;
 struct c_can_priv* netdev_priv (struct net_device const*) ;
 unsigned int stub1 (struct c_can_priv*,int ) ;

__attribute__((used)) static int __c_can_get_berr_counter(const struct net_device *dev,
        struct can_berr_counter *bec)
{
 unsigned int reg_err_counter;
 struct c_can_priv *priv = netdev_priv(dev);

 reg_err_counter = priv->read_reg(priv, C_CAN_ERR_CNT_REG);
 bec->rxerr = (reg_err_counter & ERR_CNT_REC_MASK) >>
    ERR_CNT_REC_SHIFT;
 bec->txerr = reg_err_counter & ERR_CNT_TEC_MASK;

 return 0;
}
