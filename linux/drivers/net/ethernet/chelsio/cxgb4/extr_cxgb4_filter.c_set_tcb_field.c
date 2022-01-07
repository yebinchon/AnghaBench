
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int iport; } ;
struct TYPE_8__ {TYPE_3__ val; } ;
struct filter_entry {TYPE_4__ fs; } ;
struct cpl_set_tcb_field {void* val; void* mask; void* word_cookie; void* reply_ctrl; } ;
struct TYPE_5__ {int abs_id; } ;
struct TYPE_6__ {TYPE_1__ fw_evtq; } ;
struct adapter {TYPE_2__ sge; } ;


 int CPL_PRIORITY_CONTROL ;
 int CPL_SET_TCB_FIELD ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_TP_WR_CPL (struct cpl_set_tcb_field*,int ,unsigned int) ;
 int NO_REPLY_V (int) ;
 int QUEUENO_V (int ) ;
 int REPLY_CHAN_V (int ) ;
 int TCB_COOKIE_V (unsigned int) ;
 int TCB_WORD_V (int ) ;
 scalar_t__ __skb_put_zero (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 void* cpu_to_be64 (int ) ;
 void* htons (int) ;
 int set_wr_txq (struct sk_buff*,int ,int) ;
 int t4_ofld_send (struct adapter*,struct sk_buff*) ;

__attribute__((used)) static int set_tcb_field(struct adapter *adap, struct filter_entry *f,
    unsigned int ftid, u16 word, u64 mask, u64 val,
    int no_reply)
{
 struct cpl_set_tcb_field *req;
 struct sk_buff *skb;

 skb = alloc_skb(sizeof(struct cpl_set_tcb_field), GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;

 req = (struct cpl_set_tcb_field *)__skb_put_zero(skb, sizeof(*req));
 INIT_TP_WR_CPL(req, CPL_SET_TCB_FIELD, ftid);
 req->reply_ctrl = htons(REPLY_CHAN_V(0) |
    QUEUENO_V(adap->sge.fw_evtq.abs_id) |
    NO_REPLY_V(no_reply));
 req->word_cookie = htons(TCB_WORD_V(word) | TCB_COOKIE_V(ftid));
 req->mask = cpu_to_be64(mask);
 req->val = cpu_to_be64(val);
 set_wr_txq(skb, CPL_PRIORITY_CONTROL, f->fs.val.iport & 0x3);
 t4_ofld_send(adap, skb);
 return 0;
}
