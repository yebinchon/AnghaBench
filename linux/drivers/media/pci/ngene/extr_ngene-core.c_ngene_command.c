
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngene_command {int dummy; } ;
struct ngene {int cmd_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ngene_command_mutex (struct ngene*,struct ngene_command*) ;

int ngene_command(struct ngene *dev, struct ngene_command *com)
{
 int result;

 mutex_lock(&dev->cmd_mutex);
 result = ngene_command_mutex(dev, com);
 mutex_unlock(&dev->cmd_mutex);
 return result;
}
