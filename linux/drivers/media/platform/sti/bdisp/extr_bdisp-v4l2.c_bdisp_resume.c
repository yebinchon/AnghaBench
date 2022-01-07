
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bdisp_dev {int slock; int state; } ;


 int ST_M2M_OPEN ;
 int bdisp_runtime_resume (struct device*) ;
 struct bdisp_dev* dev_get_drvdata (struct device*) ;
 int pm_runtime_suspended (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int bdisp_resume(struct device *dev)
{
 struct bdisp_dev *bdisp = dev_get_drvdata(dev);
 unsigned long flags;
 int opened;

 spin_lock_irqsave(&bdisp->slock, flags);
 opened = test_bit(ST_M2M_OPEN, &bdisp->state);
 spin_unlock_irqrestore(&bdisp->slock, flags);

 if (!opened)
  return 0;

 if (!pm_runtime_suspended(dev))
  return bdisp_runtime_resume(dev);

 return 0;
}
