
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt76_reg_pair {int dummy; } ;
struct mt76_dev {TYPE_1__* mcu_ops; int state; } ;
struct TYPE_2__ {int (* mcu_wr_rp ) (struct mt76_dev*,int ,struct mt76_reg_pair const*,int) ;} ;


 int MT76_STATE_MCU_RUNNING ;
 int mt76u_req_wr_rp (struct mt76_dev*,int ,struct mt76_reg_pair const*,int) ;
 int stub1 (struct mt76_dev*,int ,struct mt76_reg_pair const*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
mt76u_wr_rp(struct mt76_dev *dev, u32 base,
     const struct mt76_reg_pair *data, int n)
{
 if (test_bit(MT76_STATE_MCU_RUNNING, &dev->state))
  return dev->mcu_ops->mcu_wr_rp(dev, base, data, n);
 else
  return mt76u_req_wr_rp(dev, base, data, n);
}
