
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dev; } ;
struct TYPE_3__ {int key_len; int mask_len; scalar_t__ flags; } ;
struct nfp_fl_payload {int in_hw; struct nfp_fl_payload* unmasked_data; struct nfp_fl_payload* mask_data; TYPE_2__ pre_tun_rule; int linked_flows; TYPE_1__ meta; scalar_t__ nfp_tun_ipv4_addr; void* action_data; } ;
struct nfp_fl_key_ls {int key_size; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NFP_FL_MAX_A_SIZ ;
 int kfree (struct nfp_fl_payload*) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static struct nfp_fl_payload *
nfp_flower_allocate_new(struct nfp_fl_key_ls *key_layer)
{
 struct nfp_fl_payload *flow_pay;

 flow_pay = kmalloc(sizeof(*flow_pay), GFP_KERNEL);
 if (!flow_pay)
  return ((void*)0);

 flow_pay->meta.key_len = key_layer->key_size;
 flow_pay->unmasked_data = kmalloc(key_layer->key_size, GFP_KERNEL);
 if (!flow_pay->unmasked_data)
  goto err_free_flow;

 flow_pay->meta.mask_len = key_layer->key_size;
 flow_pay->mask_data = kmalloc(key_layer->key_size, GFP_KERNEL);
 if (!flow_pay->mask_data)
  goto err_free_unmasked;

 flow_pay->action_data = kmalloc(NFP_FL_MAX_A_SIZ, GFP_KERNEL);
 if (!flow_pay->action_data)
  goto err_free_mask;

 flow_pay->nfp_tun_ipv4_addr = 0;
 flow_pay->meta.flags = 0;
 INIT_LIST_HEAD(&flow_pay->linked_flows);
 flow_pay->in_hw = 0;
 flow_pay->pre_tun_rule.dev = ((void*)0);

 return flow_pay;

err_free_mask:
 kfree(flow_pay->mask_data);
err_free_unmasked:
 kfree(flow_pay->unmasked_data);
err_free_flow:
 kfree(flow_pay);
 return ((void*)0);
}
