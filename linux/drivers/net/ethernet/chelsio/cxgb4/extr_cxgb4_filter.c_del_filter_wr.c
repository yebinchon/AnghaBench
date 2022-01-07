
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct fw_filter_wr {int dummy; } ;
struct filter_entry {int pending; int tid; } ;
struct TYPE_4__ {int abs_id; } ;
struct TYPE_5__ {TYPE_1__ fw_evtq; } ;
struct TYPE_6__ {struct filter_entry* ftid_tab; } ;
struct adapter {TYPE_2__ sge; TYPE_3__ tids; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct fw_filter_wr* __skb_put (struct sk_buff*,unsigned int) ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int t4_mgmt_tx (struct adapter*,struct sk_buff*) ;
 int t4_mk_filtdelwr (int ,struct fw_filter_wr*,int ) ;

__attribute__((used)) static int del_filter_wr(struct adapter *adapter, int fidx)
{
 struct filter_entry *f = &adapter->tids.ftid_tab[fidx];
 struct fw_filter_wr *fwr;
 struct sk_buff *skb;
 unsigned int len;

 len = sizeof(*fwr);

 skb = alloc_skb(len, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 fwr = __skb_put(skb, len);
 t4_mk_filtdelwr(f->tid, fwr, adapter->sge.fw_evtq.abs_id);




 f->pending = 1;
 t4_mgmt_tx(adapter, skb);
 return 0;
}
