
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int status; int flow_ring_id; } ;
struct msgbuf_flowring_delete_resp {TYPE_1__ compl_hdr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_msgbuf {int flow; struct brcmf_pub* drvr; } ;


 scalar_t__ BRCMF_H2D_MSGRING_FLOWRING_IDSTART ;
 int MSGBUF ;
 int bphy_err (struct brcmf_pub*,char*,scalar_t__) ;
 int brcmf_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int brcmf_flowring_delete (int ,scalar_t__) ;
 int brcmf_msgbuf_remove_flowring (struct brcmf_msgbuf*,scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void
brcmf_msgbuf_process_flow_ring_delete_response(struct brcmf_msgbuf *msgbuf,
            void *buf)
{
 struct brcmf_pub *drvr = msgbuf->drvr;
 struct msgbuf_flowring_delete_resp *flowring_delete_resp;
 u16 status;
 u16 flowid;

 flowring_delete_resp = (struct msgbuf_flowring_delete_resp *)buf;

 flowid = le16_to_cpu(flowring_delete_resp->compl_hdr.flow_ring_id);
 flowid -= BRCMF_H2D_MSGRING_FLOWRING_IDSTART;
 status = le16_to_cpu(flowring_delete_resp->compl_hdr.status);

 if (status) {
  bphy_err(drvr, "Flowring deletion failed, code %d\n", status);
  brcmf_flowring_delete(msgbuf->flow, flowid);
  return;
 }
 brcmf_dbg(MSGBUF, "Flowring %d Delete response status %d\n", flowid,
    status);

 brcmf_msgbuf_remove_flowring(msgbuf, flowid);
}
