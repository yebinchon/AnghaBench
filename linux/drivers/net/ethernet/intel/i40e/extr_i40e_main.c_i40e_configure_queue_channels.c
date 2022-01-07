
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {int * max_rate; } ;
struct TYPE_7__ {int enabled_tc; TYPE_1__* tc_info; } ;
struct i40e_vsi {int * tc_seid_map; TYPE_5__* back; int ch_list; TYPE_3__ mqprio_qopt; TYPE_2__ tc_config; int seid; } ;
struct i40e_channel {int seid; int num_queue_pairs; int list; int max_tx_rate; int base_queue; } ;
struct TYPE_10__ {TYPE_4__* pdev; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_6__ {int qoffset; int qcount; } ;


 int BIT (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I40E_BW_MBPS_DIVISOR ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int *,char*,int,int ) ;
 int do_div (int ,int ) ;
 int i40e_create_queue_channel (struct i40e_vsi*,struct i40e_channel*) ;
 int i40e_remove_queue_channels (struct i40e_vsi*) ;
 struct i40e_channel* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int i40e_configure_queue_channels(struct i40e_vsi *vsi)
{
 struct i40e_channel *ch;
 u64 max_rate = 0;
 int ret = 0, i;


 vsi->tc_seid_map[0] = vsi->seid;
 for (i = 1; i < I40E_MAX_TRAFFIC_CLASS; i++) {
  if (vsi->tc_config.enabled_tc & BIT(i)) {
   ch = kzalloc(sizeof(*ch), GFP_KERNEL);
   if (!ch) {
    ret = -ENOMEM;
    goto err_free;
   }

   INIT_LIST_HEAD(&ch->list);
   ch->num_queue_pairs =
    vsi->tc_config.tc_info[i].qcount;
   ch->base_queue =
    vsi->tc_config.tc_info[i].qoffset;




   max_rate = vsi->mqprio_qopt.max_rate[i];
   do_div(max_rate, I40E_BW_MBPS_DIVISOR);
   ch->max_tx_rate = max_rate;

   list_add_tail(&ch->list, &vsi->ch_list);

   ret = i40e_create_queue_channel(vsi, ch);
   if (ret) {
    dev_err(&vsi->back->pdev->dev,
     "Failed creating queue channel with TC%d: queues %d\n",
     i, ch->num_queue_pairs);
    goto err_free;
   }
   vsi->tc_seid_map[i] = ch->seid;
  }
 }
 return ret;

err_free:
 i40e_remove_queue_channels(vsi);
 return ret;
}
