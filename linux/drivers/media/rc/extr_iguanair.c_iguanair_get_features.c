
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iguanair {int version; int bufsize; int cycle_overhead; int dev; TYPE_2__* packet; } ;
struct TYPE_3__ {int cmd; int direction; scalar_t__ start; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int BUF_SIZE ;
 int CMD_GET_BUFSIZE ;
 int CMD_GET_FEATURES ;
 int CMD_GET_VERSION ;
 int CMD_NOP ;
 int DIR_OUT ;
 int ENODEV ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,...) ;
 int iguanair_send (struct iguanair*,int) ;

__attribute__((used)) static int iguanair_get_features(struct iguanair *ir)
{
 int rc;






 ir->packet->header.start = 0;
 ir->packet->header.direction = DIR_OUT;
 ir->packet->header.cmd = CMD_NOP;
 iguanair_send(ir, sizeof(ir->packet->header));

 ir->packet->header.cmd = CMD_GET_VERSION;
 rc = iguanair_send(ir, sizeof(ir->packet->header));
 if (rc) {
  dev_info(ir->dev, "failed to get version\n");
  goto out;
 }

 if (ir->version < 0x205) {
  dev_err(ir->dev, "firmware 0x%04x is too old\n", ir->version);
  rc = -ENODEV;
  goto out;
 }

 ir->bufsize = 150;
 ir->cycle_overhead = 65;

 ir->packet->header.cmd = CMD_GET_BUFSIZE;

 rc = iguanair_send(ir, sizeof(ir->packet->header));
 if (rc) {
  dev_info(ir->dev, "failed to get buffer size\n");
  goto out;
 }

 if (ir->bufsize > BUF_SIZE) {
  dev_info(ir->dev, "buffer size %u larger than expected\n",
        ir->bufsize);
  ir->bufsize = BUF_SIZE;
 }

 ir->packet->header.cmd = CMD_GET_FEATURES;

 rc = iguanair_send(ir, sizeof(ir->packet->header));
 if (rc)
  dev_info(ir->dev, "failed to get features\n");
out:
 return rc;
}
