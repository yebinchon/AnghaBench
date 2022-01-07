
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int tgt_ready; struct htc_endpoint* endpoint; struct device* dev; void* hif_dev; struct ath9k_htc_hif* hif; int cmd_wait; int target_wait; } ;
struct htc_endpoint {int dl_pipeid; int ul_pipeid; } ;
struct device {int dummy; } ;
struct ath9k_htc_hif {int control_dl_pipe; int control_ul_pipe; } ;


 size_t ENDPOINT0 ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 struct htc_target* kzalloc (int,int ) ;

struct htc_target *ath9k_htc_hw_alloc(void *hif_handle,
          struct ath9k_htc_hif *hif,
          struct device *dev)
{
 struct htc_endpoint *endpoint;
 struct htc_target *target;

 target = kzalloc(sizeof(struct htc_target), GFP_KERNEL);
 if (!target)
  return ((void*)0);

 init_completion(&target->target_wait);
 init_completion(&target->cmd_wait);

 target->hif = hif;
 target->hif_dev = hif_handle;
 target->dev = dev;


 endpoint = &target->endpoint[ENDPOINT0];
 endpoint->ul_pipeid = hif->control_ul_pipe;
 endpoint->dl_pipeid = hif->control_dl_pipe;

 atomic_set(&target->tgt_ready, 0);

 return target;
}
