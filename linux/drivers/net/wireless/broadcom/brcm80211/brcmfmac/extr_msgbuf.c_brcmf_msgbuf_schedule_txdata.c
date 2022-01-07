
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct brcmf_msgbuf {int txflow_work; int txflow_wq; struct brcmf_commonring** flowrings; int flow_map; } ;
struct brcmf_commonring {int outstanding_tx; } ;


 scalar_t__ BRCMF_MSGBUF_DELAY_TXWORKER_THRS ;
 scalar_t__ atomic_read (int *) ;
 int queue_work (int ,int *) ;
 int set_bit (size_t,int ) ;

__attribute__((used)) static int brcmf_msgbuf_schedule_txdata(struct brcmf_msgbuf *msgbuf, u32 flowid,
     bool force)
{
 struct brcmf_commonring *commonring;

 set_bit(flowid, msgbuf->flow_map);
 commonring = msgbuf->flowrings[flowid];
 if ((force) || (atomic_read(&commonring->outstanding_tx) <
   BRCMF_MSGBUF_DELAY_TXWORKER_THRS))
  queue_work(msgbuf->txflow_wq, &msgbuf->txflow_work);

 return 0;
}
