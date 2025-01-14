
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct smsc911x_data {int dev_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reg_read ) (struct smsc911x_data*,int ) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct smsc911x_data*,int ) ;

__attribute__((used)) static inline u32 smsc911x_reg_read(struct smsc911x_data *pdata, u32 reg)
{
 u32 data;
 unsigned long flags;

 spin_lock_irqsave(&pdata->dev_lock, flags);
 data = pdata->ops->reg_read(pdata, reg);
 spin_unlock_irqrestore(&pdata->dev_lock, flags);

 return data;
}
