
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_features {unsigned int l3l4fnum; int frpbs; int frpes; int frpsel; } ;
struct stmmac_priv {unsigned int flow_entries_max; int tc_off_max; unsigned int tc_entries_max; int device; int * tc_entries; TYPE_1__* flow_entries; struct dma_features dma_cap; } ;
struct TYPE_2__ {int idx; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int ,char*,unsigned int,...) ;
 void* devm_kcalloc (int ,unsigned int,int,int ) ;
 int tc_fill_all_pass_entry (int *) ;

__attribute__((used)) static int tc_init(struct stmmac_priv *priv)
{
 struct dma_features *dma_cap = &priv->dma_cap;
 unsigned int count;
 int i;

 if (dma_cap->l3l4fnum) {
  priv->flow_entries_max = dma_cap->l3l4fnum;
  priv->flow_entries = devm_kcalloc(priv->device,
        dma_cap->l3l4fnum,
        sizeof(*priv->flow_entries),
        GFP_KERNEL);
  if (!priv->flow_entries)
   return -ENOMEM;

  for (i = 0; i < priv->flow_entries_max; i++)
   priv->flow_entries[i].idx = i;

  dev_info(priv->device, "Enabled Flow TC (entries=%d)\n",
    priv->flow_entries_max);
 }


 if (!dma_cap->frpsel)
  return 0;

 switch (dma_cap->frpbs) {
 case 0x0:
  priv->tc_off_max = 64;
  break;
 case 0x1:
  priv->tc_off_max = 128;
  break;
 case 0x2:
  priv->tc_off_max = 256;
  break;
 default:
  return -EINVAL;
 }

 switch (dma_cap->frpes) {
 case 0x0:
  count = 64;
  break;
 case 0x1:
  count = 128;
  break;
 case 0x2:
  count = 256;
  break;
 default:
  return -EINVAL;
 }


 priv->tc_entries_max = count;
 priv->tc_entries = devm_kcalloc(priv->device,
   count, sizeof(*priv->tc_entries), GFP_KERNEL);
 if (!priv->tc_entries)
  return -ENOMEM;

 tc_fill_all_pass_entry(&priv->tc_entries[count - 1]);

 dev_info(priv->device, "Enabling HW TC (entries=%d, max_off=%d)\n",
   priv->tc_entries_max, priv->tc_off_max);
 return 0;
}
