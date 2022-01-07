
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resp_desc {int numDesc; scalar_t__ cmd; scalar_t__ parm1; int parm3; int parm2; int flags; scalar_t__ seqNo; } ;
typedef struct resp_desc u8 ;
typedef scalar_t__ u32 ;
struct typhoon_indexes {int respCleared; int respReady; } ;
struct TYPE_2__ {struct resp_desc* ringBase; } ;
struct typhoon {int dev; TYPE_1__ respRing; struct typhoon_indexes* indexes; } ;


 scalar_t__ RESPONSE_RING_SIZE ;
 scalar_t__ TYPHOON_CMD_HELLO_RESP ;
 scalar_t__ TYPHOON_CMD_READ_MEDIA_STATUS ;
 int TYPHOON_RESP_ERROR ;
 int cpu_to_le32 (scalar_t__) ;
 int le16_to_cpu (scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (struct resp_desc*,struct resp_desc*,int) ;
 int netdev_err (int ,char*,int ,int,int ,int ,scalar_t__,scalar_t__) ;
 int typhoon_hello (struct typhoon*) ;
 int typhoon_inc_resp_index (scalar_t__*,int) ;
 int typhoon_media_status (int ,struct resp_desc*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int
typhoon_process_response(struct typhoon *tp, int resp_size,
    struct resp_desc *resp_save)
{
 struct typhoon_indexes *indexes = tp->indexes;
 struct resp_desc *resp;
 u8 *base = tp->respRing.ringBase;
 int count, len, wrap_len;
 u32 cleared;
 u32 ready;

 cleared = le32_to_cpu(indexes->respCleared);
 ready = le32_to_cpu(indexes->respReady);
 while(cleared != ready) {
  resp = (struct resp_desc *)(base + cleared);
  count = resp->numDesc + 1;
  if(resp_save && resp->seqNo) {
   if(count > resp_size) {
    resp_save->flags = TYPHOON_RESP_ERROR;
    goto cleanup;
   }

   wrap_len = 0;
   len = count * sizeof(*resp);
   if(unlikely(cleared + len > RESPONSE_RING_SIZE)) {
    wrap_len = cleared + len - RESPONSE_RING_SIZE;
    len = RESPONSE_RING_SIZE - cleared;
   }

   memcpy(resp_save, resp, len);
   if(unlikely(wrap_len)) {
    resp_save += len / sizeof(*resp);
    memcpy(resp_save, base, wrap_len);
   }

   resp_save = ((void*)0);
  } else if(resp->cmd == TYPHOON_CMD_READ_MEDIA_STATUS) {
   typhoon_media_status(tp->dev, resp);
  } else if(resp->cmd == TYPHOON_CMD_HELLO_RESP) {
   typhoon_hello(tp);
  } else {
   netdev_err(tp->dev,
       "dumping unexpected response 0x%04x:%d:0x%02x:0x%04x:%08x:%08x\n",
       le16_to_cpu(resp->cmd),
       resp->numDesc, resp->flags,
       le16_to_cpu(resp->parm1),
       le32_to_cpu(resp->parm2),
       le32_to_cpu(resp->parm3));
  }

cleanup:
  typhoon_inc_resp_index(&cleared, count);
 }

 indexes->respCleared = cpu_to_le32(cleared);
 wmb();
 return resp_save == ((void*)0);
}
