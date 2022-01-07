
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dev; } ;


 int pm_request_resume (int ) ;

void mei_hbm_pg_resume(struct mei_device *dev)
{
 pm_request_resume(dev->dev);
}
