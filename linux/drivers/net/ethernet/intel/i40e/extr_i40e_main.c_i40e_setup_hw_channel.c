
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_vsi {scalar_t__ next_base_queue; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct i40e_channel {int initialized; scalar_t__ num_queue_pairs; int stat_counter_idx; int vsi_number; int seid; int type; scalar_t__ base_queue; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ,int ,int ,scalar_t__,scalar_t__) ;
 int dev_info (int *,char*,int ) ;
 int i40e_add_channel (struct i40e_pf*,int ,struct i40e_channel*) ;
 int i40e_channel_config_tx_ring (struct i40e_pf*,struct i40e_vsi*,struct i40e_channel*) ;

__attribute__((used)) static inline int i40e_setup_hw_channel(struct i40e_pf *pf,
     struct i40e_vsi *vsi,
     struct i40e_channel *ch,
     u16 uplink_seid, u8 type)
{
 int ret;

 ch->initialized = 0;
 ch->base_queue = vsi->next_base_queue;
 ch->type = type;


 ret = i40e_add_channel(pf, uplink_seid, ch);
 if (ret) {
  dev_info(&pf->pdev->dev,
    "failed to add_channel using uplink_seid %u\n",
    uplink_seid);
  return ret;
 }


 ch->initialized = 1;


 ret = i40e_channel_config_tx_ring(pf, vsi, ch);
 if (ret) {
  dev_info(&pf->pdev->dev,
    "failed to configure TX rings for channel %u\n",
    ch->seid);
  return ret;
 }


 vsi->next_base_queue = vsi->next_base_queue + ch->num_queue_pairs;
 dev_dbg(&pf->pdev->dev,
  "Added channel: vsi_seid %u, vsi_number %u, stat_counter_idx %u, num_queue_pairs %u, pf->next_base_queue %d\n",
  ch->seid, ch->vsi_number, ch->stat_counter_idx,
  ch->num_queue_pairs,
  vsi->next_base_queue);
 return ret;
}
