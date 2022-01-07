
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 int cleanup_dev (struct net_device*) ;
 struct net_device* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int hp100_eisa_remove(struct device *gendev)
{
 struct net_device *dev = dev_get_drvdata(gendev);
 cleanup_dev(dev);
 return 0;
}
