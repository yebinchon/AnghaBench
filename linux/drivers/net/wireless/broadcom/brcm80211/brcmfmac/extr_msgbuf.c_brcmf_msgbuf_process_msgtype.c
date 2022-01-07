
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf_common_hdr {int msgtype; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_msgbuf {struct brcmf_pub* drvr; } ;


 int MSGBUF ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_msgbuf_process_event (struct brcmf_msgbuf*,void*) ;
 int brcmf_msgbuf_process_flow_ring_create_response (struct brcmf_msgbuf*,void*) ;
 int brcmf_msgbuf_process_flow_ring_delete_response (struct brcmf_msgbuf*,void*) ;
 int brcmf_msgbuf_process_gen_status (struct brcmf_msgbuf*,void*) ;
 int brcmf_msgbuf_process_ioctl_complete (struct brcmf_msgbuf*,void*) ;
 int brcmf_msgbuf_process_ring_status (struct brcmf_msgbuf*,void*) ;
 int brcmf_msgbuf_process_rx_complete (struct brcmf_msgbuf*,void*) ;
 int brcmf_msgbuf_process_txstatus (struct brcmf_msgbuf*,void*) ;

__attribute__((used)) static void brcmf_msgbuf_process_msgtype(struct brcmf_msgbuf *msgbuf, void *buf)
{
 struct brcmf_pub *drvr = msgbuf->drvr;
 struct msgbuf_common_hdr *msg;

 msg = (struct msgbuf_common_hdr *)buf;
 switch (msg->msgtype) {
 case 134:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_GEN_STATUS\n");
  brcmf_msgbuf_process_gen_status(msgbuf, buf);
  break;
 case 131:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_RING_STATUS\n");
  brcmf_msgbuf_process_ring_status(msgbuf, buf);
  break;
 case 136:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_FLOW_RING_CREATE_CMPLT\n");
  brcmf_msgbuf_process_flow_ring_create_response(msgbuf, buf);
  break;
 case 135:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_FLOW_RING_DELETE_CMPLT\n");
  brcmf_msgbuf_process_flow_ring_delete_response(msgbuf, buf);
  break;
 case 133:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_IOCTLPTR_REQ_ACK\n");
  break;
 case 132:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_IOCTL_CMPLT\n");
  brcmf_msgbuf_process_ioctl_complete(msgbuf, buf);
  break;
 case 128:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_WL_EVENT\n");
  brcmf_msgbuf_process_event(msgbuf, buf);
  break;
 case 129:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_TX_STATUS\n");
  brcmf_msgbuf_process_txstatus(msgbuf, buf);
  break;
 case 130:
  brcmf_dbg(MSGBUF, "MSGBUF_TYPE_RX_CMPLT\n");
  brcmf_msgbuf_process_rx_complete(msgbuf, buf);
  break;
 default:
  bphy_err(drvr, "Unsupported msgtype %d\n", msg->msgtype);
  break;
 }
}
