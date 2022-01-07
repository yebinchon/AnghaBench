
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct cosm_device* private; } ;
struct cosm_device {int dummy; } ;


 int cosm_stop (struct cosm_device*,int) ;

__attribute__((used)) static int force_reset_show(struct seq_file *s, void *pos)
{
 struct cosm_device *cdev = s->private;

 cosm_stop(cdev, 1);
 return 0;
}
