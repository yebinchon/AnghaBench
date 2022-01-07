
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int v4l2_dev; } ;
struct cobalt {TYPE_1__* streams; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;


 unsigned int COBALT_NUM_NODES ;
 int cobalt_err (char*) ;
 struct cobalt* to_cobalt (int ) ;

__attribute__((used)) static unsigned cobalt_get_sd_nr(struct v4l2_subdev *sd)
{
 struct cobalt *cobalt = to_cobalt(sd->v4l2_dev);
 unsigned i;

 for (i = 0; i < COBALT_NUM_NODES; i++)
  if (sd == cobalt->streams[i].sd)
   return i;
 cobalt_err("Invalid adv7604 subdev pointer!\n");
 return 0;
}
