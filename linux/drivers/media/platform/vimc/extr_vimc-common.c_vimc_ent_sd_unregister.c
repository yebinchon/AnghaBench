
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimc_ent_device {int pads; int ent; } ;
struct v4l2_subdev {int dummy; } ;


 int media_entity_cleanup (int ) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 int vimc_pads_cleanup (int ) ;

void vimc_ent_sd_unregister(struct vimc_ent_device *ved, struct v4l2_subdev *sd)
{
 media_entity_cleanup(ved->ent);
 vimc_pads_cleanup(ved->pads);
 v4l2_device_unregister_subdev(sd);
}
