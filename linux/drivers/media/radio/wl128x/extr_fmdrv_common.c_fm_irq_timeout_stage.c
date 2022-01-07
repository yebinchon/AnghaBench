
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int timer; int stage; } ;
struct fmdev {TYPE_1__ irq_info; } ;


 scalar_t__ FM_DRV_TX_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static inline void fm_irq_timeout_stage(struct fmdev *fmdev, u8 stage)
{
 fmdev->irq_info.stage = stage;
 mod_timer(&fmdev->irq_info.timer, jiffies + FM_DRV_TX_TIMEOUT);
}
