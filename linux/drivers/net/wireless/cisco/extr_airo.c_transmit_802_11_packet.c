
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct airo_info {TYPE_1__* dev; } ;
typedef int payloadLen ;
typedef int cmd ;
typedef int __le16 ;
struct TYPE_9__ {int parm0; int cmd; } ;
struct TYPE_8__ {int status; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ Resp ;
typedef TYPE_3__ Cmd ;


 int BAP1 ;
 int CMD_TRANSMIT ;
 int ERROR ;
 scalar_t__ SUCCESS ;
 int airo_print_warn (int ,char*,int) ;
 scalar_t__ bap_setup (struct airo_info*,int,int,int ) ;
 int bap_write (struct airo_info*,int *,int,int ) ;
 int cpu_to_le16 (int) ;
 int header_len (int ) ;
 scalar_t__ issuecommand (struct airo_info*,TYPE_3__*,TYPE_2__*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int transmit_802_11_packet(struct airo_info *ai, int len, char *pPacket)
{
 __le16 fc, payloadLen;
 Cmd cmd;
 Resp rsp;
 int hdrlen;
 static u8 tail[(30-10) + 2 + 6] = {[30-10] = 6};

 u16 txFid = len;
 len >>= 16;

 fc = *(__le16*)pPacket;
 hdrlen = header_len(fc);

 if (len < hdrlen) {
  airo_print_warn(ai->dev->name, "Short packet %d", len);
  return ERROR;
 }



 if (bap_setup(ai, txFid, 6, BAP1) != SUCCESS) return ERROR;


 payloadLen = cpu_to_le16(len-hdrlen);
 bap_write(ai, &payloadLen, sizeof(payloadLen),BAP1);
 if (bap_setup(ai, txFid, 0x0014, BAP1) != SUCCESS) return ERROR;
 bap_write(ai, (__le16 *)pPacket, hdrlen, BAP1);
 bap_write(ai, (__le16 *)(tail + (hdrlen - 10)), 38 - hdrlen, BAP1);

 bap_write(ai, (__le16 *)(pPacket + hdrlen), len - hdrlen, BAP1);

 memset( &cmd, 0, sizeof( cmd ) );
 cmd.cmd = CMD_TRANSMIT;
 cmd.parm0 = txFid;
 if (issuecommand(ai, &cmd, &rsp) != SUCCESS) return ERROR;
 if ( (rsp.status & 0xFF00) != 0) return ERROR;
 return SUCCESS;
}
