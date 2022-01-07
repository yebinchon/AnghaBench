
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vimc_ent_link {size_t src_ent; size_t sink_ent; int flags; int sink_pad; int src_pad; } ;
struct vimc_ent_device {int ent; } ;
struct vimc_device {int * subdevs; TYPE_1__* pipe_cfg; } ;
struct TYPE_2__ {unsigned int num_links; struct vimc_ent_link* links; } ;


 int media_create_pad_link (int ,int ,int ,int ,int ) ;
 struct vimc_ent_device* platform_get_drvdata (int ) ;

__attribute__((used)) static int vimc_create_links(struct vimc_device *vimc)
{
 unsigned int i;
 int ret;


 for (i = 0; i < vimc->pipe_cfg->num_links; i++) {
  const struct vimc_ent_link *link = &vimc->pipe_cfg->links[i];




  struct vimc_ent_device *ved_src =
   platform_get_drvdata(vimc->subdevs[link->src_ent]);
  struct vimc_ent_device *ved_sink =
   platform_get_drvdata(vimc->subdevs[link->sink_ent]);

  ret = media_create_pad_link(ved_src->ent, link->src_pad,
         ved_sink->ent, link->sink_pad,
         link->flags);
  if (ret)
   return ret;
 }

 return 0;
}
