
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_hbm_cl_cmd {int dummy; } ;
struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;


 int mei_cl_notify (struct mei_cl*) ;
 struct mei_cl* mei_hbm_cl_find_by_cmd (struct mei_device*,struct mei_hbm_cl_cmd*) ;

__attribute__((used)) static void mei_hbm_cl_notify(struct mei_device *dev,
         struct mei_hbm_cl_cmd *cmd)
{
 struct mei_cl *cl;

 cl = mei_hbm_cl_find_by_cmd(dev, cmd);
 if (cl)
  mei_cl_notify(cl);
}
