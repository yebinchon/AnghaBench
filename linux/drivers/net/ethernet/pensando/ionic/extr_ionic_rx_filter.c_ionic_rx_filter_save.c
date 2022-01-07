
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u32 ;
typedef int u16 ;
struct TYPE_13__ {int vlan; } ;
struct TYPE_12__ {scalar_t__ addr; } ;
struct TYPE_11__ {int vlan; } ;
struct ionic_rx_filter_add_cmd {TYPE_5__ mac_vlan; TYPE_4__ mac; TYPE_3__ vlan; int match; } ;
struct ionic_rx_filter {unsigned int filter_id; int by_id; int by_hash; int cmd; int rxq_index; void* flow_id; } ;
struct TYPE_16__ {int lock; struct hlist_head* by_id; struct hlist_head* by_hash; } ;
struct ionic_lif {TYPE_8__ rx_filters; TYPE_1__* ionic; } ;
struct TYPE_14__ {int filter_id; } ;
struct TYPE_15__ {TYPE_6__ rx_filter_add; } ;
struct TYPE_10__ {struct ionic_rx_filter_add_cmd rx_filter_add; } ;
struct ionic_admin_ctx {TYPE_7__ comp; TYPE_2__ cmd; } ;
struct hlist_head {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {struct device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int IONIC_RX_FILTER_HASH_BITS ;
 unsigned int IONIC_RX_FILTER_HLISTS_MASK ;



 struct ionic_rx_filter* devm_kzalloc (struct device*,int,int ) ;
 unsigned int hash_32 (unsigned int,int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int memcpy (int *,struct ionic_rx_filter_add_cmd*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ionic_rx_filter_save(struct ionic_lif *lif, u32 flow_id, u16 rxq_index,
    u32 hash, struct ionic_admin_ctx *ctx)
{
 struct device *dev = lif->ionic->dev;
 struct ionic_rx_filter_add_cmd *ac;
 struct ionic_rx_filter *f;
 struct hlist_head *head;
 unsigned int key;

 ac = &ctx->cmd.rx_filter_add;

 switch (le16_to_cpu(ac->match)) {
 case 128:
  key = le16_to_cpu(ac->vlan.vlan);
  break;
 case 130:
  key = *(u32 *)ac->mac.addr;
  break;
 case 129:
  key = le16_to_cpu(ac->mac_vlan.vlan);
  break;
 default:
  return -EINVAL;
 }

 f = devm_kzalloc(dev, sizeof(*f), GFP_KERNEL);
 if (!f)
  return -ENOMEM;

 f->flow_id = flow_id;
 f->filter_id = le32_to_cpu(ctx->comp.rx_filter_add.filter_id);
 f->rxq_index = rxq_index;
 memcpy(&f->cmd, ac, sizeof(f->cmd));

 INIT_HLIST_NODE(&f->by_hash);
 INIT_HLIST_NODE(&f->by_id);

 spin_lock_bh(&lif->rx_filters.lock);

 key = hash_32(key, IONIC_RX_FILTER_HASH_BITS);
 head = &lif->rx_filters.by_hash[key];
 hlist_add_head(&f->by_hash, head);

 key = f->filter_id & IONIC_RX_FILTER_HLISTS_MASK;
 head = &lif->rx_filters.by_id[key];
 hlist_add_head(&f->by_id, head);

 spin_unlock_bh(&lif->rx_filters.lock);

 return 0;
}
