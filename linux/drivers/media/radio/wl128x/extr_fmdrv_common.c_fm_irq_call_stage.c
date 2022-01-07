
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int stage; } ;
struct fmdev {TYPE_1__ irq_info; } ;


 int fm_irq_call (struct fmdev*) ;

__attribute__((used)) static inline void fm_irq_call_stage(struct fmdev *fmdev, u8 stage)
{
 fmdev->irq_info.stage = stage;
 fm_irq_call(fmdev);
}
