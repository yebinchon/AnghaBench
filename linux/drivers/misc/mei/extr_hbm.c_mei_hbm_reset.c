
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;


 int mei_hbm_idle (struct mei_device*) ;
 int mei_me_cl_rm_all (struct mei_device*) ;

void mei_hbm_reset(struct mei_device *dev)
{
 mei_me_cl_rm_all(dev);

 mei_hbm_idle(dev);
}
