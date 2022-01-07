
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dev; } ;


 int dev_set_drvdata (int ,int *) ;

__attribute__((used)) static void hns_dsaf_free_dev(struct dsaf_device *dsaf_dev)
{
 (void)dev_set_drvdata(dsaf_dev->dev, ((void*)0));
}
