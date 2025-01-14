
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hfa384x_regs {void* swsupport0; void* offset1; void* offset0; void* evstat; void* cmd; } ;


 int HFA384X_CMD_OFF ;
 int HFA384X_EVSTAT_OFF ;
 void* HFA384X_INW (int ) ;
 int HFA384X_OFFSET0_OFF ;
 int HFA384X_OFFSET1_OFF ;
 int HFA384X_SWSUPPORT0_OFF ;

__attribute__((used)) static void hfa384x_read_regs(struct net_device *dev,
         struct hfa384x_regs *regs)
{
 regs->cmd = HFA384X_INW(HFA384X_CMD_OFF);
 regs->evstat = HFA384X_INW(HFA384X_EVSTAT_OFF);
 regs->offset0 = HFA384X_INW(HFA384X_OFFSET0_OFF);
 regs->offset1 = HFA384X_INW(HFA384X_OFFSET1_OFF);
 regs->swsupport0 = HFA384X_INW(HFA384X_SWSUPPORT0_OFF);
}
