
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int port; int node; } ;
struct TYPE_6__ {int port; int node; } ;
struct scifmsg {size_t uop; int * payload; TYPE_3__ dst; TYPE_2__ src; } ;
struct scif_dev {TYPE_1__* sdev; } ;
struct TYPE_8__ {int en_msg_log; } ;
struct TYPE_5__ {int dev; } ;


 size_t SCIF_MAX_MSG ;
 int dev_err (int *,char*,char const*,size_t) ;
 int dev_info (int *,char*,char const*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int * message_types ;
 TYPE_4__ scif_info ;

__attribute__((used)) static void
scif_display_message(struct scif_dev *scifdev, struct scifmsg *msg,
       const char *label)
{
 if (!scif_info.en_msg_log)
  return;
 if (msg->uop > SCIF_MAX_MSG) {
  dev_err(&scifdev->sdev->dev,
   "%s: unknown msg type %d\n", label, msg->uop);
  return;
 }
 dev_info(&scifdev->sdev->dev,
   "%s: msg type %s, src %d:%d, dest %d:%d payload 0x%llx:0x%llx:0x%llx:0x%llx\n",
   label, message_types[msg->uop], msg->src.node, msg->src.port,
   msg->dst.node, msg->dst.port, msg->payload[0], msg->payload[1],
   msg->payload[2], msg->payload[3]);
}
