
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_9__ {scalar_t__ enabled; } ;
struct airo_info {TYPE_2__ micstats; int flags; TYPE_1__* dev; } ;
typedef int payloadLen ;
typedef int pMic ;
typedef int etherHead ;
typedef int cmd ;
typedef int __le16 ;
typedef int __be16 ;
struct TYPE_11__ {int parm0; int cmd; } ;
struct TYPE_10__ {int status; } ;
struct TYPE_8__ {int name; } ;
typedef TYPE_3__ Resp ;
typedef int MICBuffer ;
typedef TYPE_4__ Cmd ;


 int BAP1 ;
 int CMD_TRANSMIT ;
 int ERROR ;
 int ETH_ALEN ;
 int FLAG_MIC_CAPABLE ;
 scalar_t__ SUCCESS ;
 int airo_print_warn (int ,char*,int) ;
 scalar_t__ bap_setup (struct airo_info*,int,int,int ) ;
 int bap_write (struct airo_info*,int *,int,int ) ;
 int cpu_to_le16 (int) ;
 scalar_t__ encapsulate (struct airo_info*,int *,int *,int) ;
 scalar_t__ issuecommand (struct airo_info*,TYPE_4__*,TYPE_3__*) ;
 int memset (TYPE_4__*,int ,int) ;
 int ntohs (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int transmit_802_3_packet(struct airo_info *ai, int len, char *pPacket)
{
 __le16 payloadLen;
 Cmd cmd;
 Resp rsp;
 int miclen = 0;
 u16 txFid = len;
 MICBuffer pMic;

 len >>= 16;

 if (len <= ETH_ALEN * 2) {
  airo_print_warn(ai->dev->name, "Short packet %d", len);
  return ERROR;
 }
 len -= ETH_ALEN * 2;

 if (test_bit(FLAG_MIC_CAPABLE, &ai->flags) && ai->micstats.enabled &&
     (ntohs(((__be16 *)pPacket)[6]) != 0x888E)) {
  if (encapsulate(ai,(etherHead *)pPacket,&pMic,len) != SUCCESS)
   return ERROR;
  miclen = sizeof(pMic);
 }


 if (bap_setup(ai, txFid, 0x0036, BAP1) != SUCCESS) return ERROR;


 payloadLen = cpu_to_le16(len + miclen);
 bap_write(ai, &payloadLen, sizeof(payloadLen),BAP1);
 bap_write(ai, (__le16*)pPacket, sizeof(etherHead), BAP1);
 if (miclen)
  bap_write(ai, (__le16*)&pMic, miclen, BAP1);
 bap_write(ai, (__le16*)(pPacket + sizeof(etherHead)), len, BAP1);

 memset( &cmd, 0, sizeof( cmd ) );
 cmd.cmd = CMD_TRANSMIT;
 cmd.parm0 = txFid;
 if (issuecommand(ai, &cmd, &rsp) != SUCCESS) return ERROR;
 if ( (rsp.status & 0xFF00) != 0) return ERROR;
 return SUCCESS;
}
