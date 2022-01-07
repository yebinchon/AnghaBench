
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ssbi {int (* write ) (struct ssbi*,int ,int const*,int) ;int lock; } ;
struct device {int dummy; } ;


 struct ssbi* dev_get_drvdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ssbi*,int ,int const*,int) ;

int ssbi_write(struct device *dev, u16 addr, const u8 *buf, int len)
{
 struct ssbi *ssbi = dev_get_drvdata(dev);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&ssbi->lock, flags);
 ret = ssbi->write(ssbi, addr, buf, len);
 spin_unlock_irqrestore(&ssbi->lock, flags);

 return ret;
}
