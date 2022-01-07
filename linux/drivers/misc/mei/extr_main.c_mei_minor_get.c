
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int minor; int dev; } ;


 int ENOSPC ;
 int GFP_KERNEL ;
 int MEI_MAX_DEVS ;
 int dev_err (int ,char*) ;
 int idr_alloc (int *,struct mei_device*,int ,int ,int ) ;
 int mei_idr ;
 int mei_minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mei_minor_get(struct mei_device *dev)
{
 int ret;

 mutex_lock(&mei_minor_lock);
 ret = idr_alloc(&mei_idr, dev, 0, MEI_MAX_DEVS, GFP_KERNEL);
 if (ret >= 0)
  dev->minor = ret;
 else if (ret == -ENOSPC)
  dev_err(dev->dev, "too many mei devices\n");

 mutex_unlock(&mei_minor_lock);
 return ret;
}
