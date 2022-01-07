
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int dummy; } ;


 int MCU_CMD_RESTART_DL_REQ ;
 int __mt76_mcu_send_msg (struct mt76_dev*,int ,int *,int ,int) ;

__attribute__((used)) static int
mt7603_mcu_restart(struct mt76_dev *dev)
{
 return __mt76_mcu_send_msg(dev, -MCU_CMD_RESTART_DL_REQ,
       ((void*)0), 0, 1);
}
