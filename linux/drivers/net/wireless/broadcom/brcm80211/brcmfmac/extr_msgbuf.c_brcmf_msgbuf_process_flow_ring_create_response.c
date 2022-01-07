
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int status; int flow_ring_id; } ;
struct msgbuf_flowring_create_resp {TYPE_1__ compl_hdr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_msgbuf {int flow; struct brcmf_pub* drvr; } ;


 scalar_t__ BRCMF_H2D_MSGRING_FLOWRING_IDSTART ;
 int MSGBUF ;
 int bphy_err (struct brcmf_pub*,char*,scalar_t__) ;
 int brcmf_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int brcmf_flowring_open (int ,scalar_t__) ;
 int brcmf_msgbuf_remove_flowring (struct brcmf_msgbuf*,scalar_t__) ;
 int brcmf_msgbuf_schedule_txdata (struct brcmf_msgbuf*,scalar_t__,int) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void
brcmf_msgbuf_process_flow_ring_create_response(struct brcmf_msgbuf *msgbuf,
            void *buf)
{
 struct brcmf_pub *drvr = msgbuf->drvr;
 struct msgbuf_flowring_create_resp *flowring_create_resp;
 u16 status;
 u16 flowid;

 flowring_create_resp = (struct msgbuf_flowring_create_resp *)buf;

 flowid = le16_to_cpu(flowring_create_resp->compl_hdr.flow_ring_id);
 flowid -= BRCMF_H2D_MSGRING_FLOWRING_IDSTART;
 status = le16_to_cpu(flowring_create_resp->compl_hdr.status);

 if (status) {
  bphy_err(drvr, "Flowring creation failed, code %d\n", status);
  brcmf_msgbuf_remove_flowring(msgbuf, flowid);
  return;
 }
 brcmf_dbg(MSGBUF, "Flowring %d Create response status %d\n", flowid,
    status);

 brcmf_flowring_open(msgbuf->flow, flowid);

 brcmf_msgbuf_schedule_txdata(msgbuf, flowid, 1);
}
