
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_subdev_info {int name; } ;
struct vpif_capture_config {int subdev_count; struct vpif_subdev_info* subdev_info; } ;
struct vpif_capture_chan_config {int input_count; TYPE_1__* inputs; } ;
struct TYPE_2__ {char* subdev_name; } ;


 int debug ;
 int strcmp (int ,char const*) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_input_to_subdev(
  struct vpif_capture_config *vpif_cfg,
  struct vpif_capture_chan_config *chan_cfg,
  int input_index)
{
 struct vpif_subdev_info *subdev_info;
 const char *subdev_name;
 int i;

 vpif_dbg(2, debug, "vpif_input_to_subdev\n");

 if (!chan_cfg)
  return -1;
 if (input_index >= chan_cfg->input_count)
  return -1;
 subdev_name = chan_cfg->inputs[input_index].subdev_name;
 if (!subdev_name)
  return -1;


 for (i = 0; i < vpif_cfg->subdev_count; i++) {
  subdev_info = &vpif_cfg->subdev_info[i];
  if (subdev_info && !strcmp(subdev_info->name, subdev_name))
   return i;
 }
 return -1;
}
