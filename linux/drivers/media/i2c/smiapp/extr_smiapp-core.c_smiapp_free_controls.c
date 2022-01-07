
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smiapp_sensor {unsigned int ssds_used; TYPE_1__* ssds; } ;
struct TYPE_2__ {int ctrl_handler; } ;


 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static void smiapp_free_controls(struct smiapp_sensor *sensor)
{
 unsigned int i;

 for (i = 0; i < sensor->ssds_used; i++)
  v4l2_ctrl_handler_free(&sensor->ssds[i].ctrl_handler);
}
