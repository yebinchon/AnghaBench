
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vivid_dev {int osd_jiffies; int * osd; } ;
struct cec_msg {int dummy; } ;
struct TYPE_2__ {int * log_addr; } ;
struct cec_adapter {TYPE_1__ log_addrs; } ;



 int CEC_OP_ABORT_INVALID_OP ;



 int ENOMSG ;
 struct vivid_dev* cec_get_drvdata (struct cec_adapter*) ;
 int cec_is_sink (struct cec_adapter*) ;
 int cec_msg_destination (struct cec_msg*) ;
 int cec_msg_feature_abort (struct cec_msg*,int,int ) ;
 int cec_msg_init (struct cec_msg*,int ,int ) ;
 int cec_msg_initiator (struct cec_msg*) ;
 scalar_t__ cec_msg_is_broadcast (struct cec_msg*) ;
 int cec_msg_opcode (struct cec_msg*) ;
 int cec_ops_set_osd_string (struct cec_msg*,int *,char*) ;
 int cec_transmit_msg (struct cec_adapter*,struct cec_msg*,int) ;
 int jiffies ;
 int strscpy (int *,char*,int) ;

__attribute__((used)) static int vivid_received(struct cec_adapter *adap, struct cec_msg *msg)
{
 struct vivid_dev *dev = cec_get_drvdata(adap);
 struct cec_msg reply;
 u8 dest = cec_msg_destination(msg);
 u8 disp_ctl;
 char osd[14];

 if (cec_msg_is_broadcast(msg))
  dest = adap->log_addrs.log_addr[0];
 cec_msg_init(&reply, dest, cec_msg_initiator(msg));

 switch (cec_msg_opcode(msg)) {
 case 131:
  if (!cec_is_sink(adap))
   return -ENOMSG;
  cec_ops_set_osd_string(msg, &disp_ctl, osd);
  switch (disp_ctl) {
  case 129:
   strscpy(dev->osd, osd, sizeof(dev->osd));
   dev->osd_jiffies = jiffies;
   break;
  case 128:
   strscpy(dev->osd, osd, sizeof(dev->osd));
   dev->osd_jiffies = 0;
   break;
  case 130:
   dev->osd[0] = 0;
   dev->osd_jiffies = 0;
   break;
  default:
   cec_msg_feature_abort(&reply, cec_msg_opcode(msg),
           CEC_OP_ABORT_INVALID_OP);
   cec_transmit_msg(adap, &reply, 0);
   break;
  }
  break;
 default:
  return -ENOMSG;
 }
 return 0;
}
