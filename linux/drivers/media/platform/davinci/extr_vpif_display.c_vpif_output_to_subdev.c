
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_subdev_info {int name; } ;
struct vpif_display_config {int subdev_count; struct vpif_subdev_info* subdevinfo; } ;
struct vpif_display_chan_config {TYPE_1__* outputs; } ;
struct TYPE_2__ {char* subdev_name; } ;


 int debug ;
 int strcmp (int ,char const*) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int
vpif_output_to_subdev(struct vpif_display_config *vpif_cfg,
        struct vpif_display_chan_config *chan_cfg, int index)
{
 struct vpif_subdev_info *subdev_info;
 const char *subdev_name;
 int i;

 vpif_dbg(2, debug, "vpif_output_to_subdev\n");

 if (!chan_cfg->outputs)
  return -1;

 subdev_name = chan_cfg->outputs[index].subdev_name;
 if (!subdev_name)
  return -1;


 for (i = 0; i < vpif_cfg->subdev_count; i++) {
  subdev_info = &vpif_cfg->subdevinfo[i];
  if (!strcmp(subdev_info->name, subdev_name))
   return i;
 }
 return -1;
}
