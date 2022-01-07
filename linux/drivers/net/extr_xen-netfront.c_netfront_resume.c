
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; int dev; } ;
struct netfront_info {int dummy; } ;


 int dev_dbg (int *,char*,int ) ;
 struct netfront_info* dev_get_drvdata (int *) ;
 int xennet_disconnect_backend (struct netfront_info*) ;

__attribute__((used)) static int netfront_resume(struct xenbus_device *dev)
{
 struct netfront_info *info = dev_get_drvdata(&dev->dev);

 dev_dbg(&dev->dev, "%s\n", dev->nodename);

 xennet_disconnect_backend(info);
 return 0;
}
