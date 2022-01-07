
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef scalar_t__ u32 ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct ethhdr {int h_dest; int h_source; } ;
struct brcmf_msgbuf_work_item {int ifidx; int queue; int da; int sa; scalar_t__ flowid; } ;
struct brcmf_msgbuf {int flowring_work; int flowring_work_lock; int work_queue; int flow; } ;


 scalar_t__ BRCMF_FLOWRING_INVALID_ID ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 scalar_t__ brcmf_flowring_create (int ,int ,int ,int) ;
 int kfree (struct brcmf_msgbuf_work_item*) ;
 struct brcmf_msgbuf_work_item* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static u32 brcmf_msgbuf_flowring_create(struct brcmf_msgbuf *msgbuf, int ifidx,
     struct sk_buff *skb)
{
 struct brcmf_msgbuf_work_item *create;
 struct ethhdr *eh = (struct ethhdr *)(skb->data);
 u32 flowid;
 ulong flags;

 create = kzalloc(sizeof(*create), GFP_ATOMIC);
 if (create == ((void*)0))
  return BRCMF_FLOWRING_INVALID_ID;

 flowid = brcmf_flowring_create(msgbuf->flow, eh->h_dest,
           skb->priority, ifidx);
 if (flowid == BRCMF_FLOWRING_INVALID_ID) {
  kfree(create);
  return flowid;
 }

 create->flowid = flowid;
 create->ifidx = ifidx;
 memcpy(create->sa, eh->h_source, ETH_ALEN);
 memcpy(create->da, eh->h_dest, ETH_ALEN);

 spin_lock_irqsave(&msgbuf->flowring_work_lock, flags);
 list_add_tail(&create->queue, &msgbuf->work_queue);
 spin_unlock_irqrestore(&msgbuf->flowring_work_lock, flags);
 schedule_work(&msgbuf->flowring_work);

 return flowid;
}
