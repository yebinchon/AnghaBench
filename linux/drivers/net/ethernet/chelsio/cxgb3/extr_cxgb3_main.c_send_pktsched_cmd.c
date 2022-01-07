
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mngt_pktsched_wr {int sched; int idx; int min; int max; int binding; int mngt_opcode; int wr_hi; } ;
struct cpl_set_tcb_field {int dummy; } ;
struct adapter {struct sk_buff* nofail_skb; } ;


 int ENOMEM ;
 int FW_MNGTOPCODE_PKTSCHED_SET ;
 int FW_WROPCODE_MNGT ;
 int GFP_KERNEL ;
 int V_WR_OP (int ) ;
 void* alloc_skb (int,int ) ;
 int htonl (int ) ;
 struct mngt_pktsched_wr* skb_put (struct sk_buff*,int) ;
 int t3_mgmt_tx (struct adapter*,struct sk_buff*) ;

__attribute__((used)) static int send_pktsched_cmd(struct adapter *adap, int sched, int qidx, int lo,
         int hi, int port)
{
 struct sk_buff *skb;
 struct mngt_pktsched_wr *req;
 int ret;

 skb = alloc_skb(sizeof(*req), GFP_KERNEL);
 if (!skb)
  skb = adap->nofail_skb;
 if (!skb)
  return -ENOMEM;

 req = skb_put(skb, sizeof(*req));
 req->wr_hi = htonl(V_WR_OP(FW_WROPCODE_MNGT));
 req->mngt_opcode = FW_MNGTOPCODE_PKTSCHED_SET;
 req->sched = sched;
 req->idx = qidx;
 req->min = lo;
 req->max = hi;
 req->binding = port;
 ret = t3_mgmt_tx(adap, skb);
 if (skb == adap->nofail_skb) {
  adap->nofail_skb = alloc_skb(sizeof(struct cpl_set_tcb_field),
          GFP_KERNEL);
  if (!adap->nofail_skb)
   ret = -ENOMEM;
 }

 return ret;
}
