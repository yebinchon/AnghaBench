
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mmc_command {unsigned int flags; int opcode; TYPE_1__* data; } ;
struct cb710_mmc_reader {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CB710_MMC_CMD_AC ;
 int CB710_MMC_CMD_ADTC ;
 int CB710_MMC_CMD_BC ;
 int CB710_MMC_CMD_BCR ;
 int CB710_MMC_CMD_CODE_SHIFT ;
 int CB710_MMC_DATA_READ ;
 int CB710_MMC_RSP_136 ;
 int CB710_MMC_RSP_BUSY ;
 int CB710_MMC_RSP_NO_CRC ;
 int CB710_MMC_RSP_PRESENT ;




 unsigned int MMC_CMD_MASK ;
 int MMC_DATA_READ ;
 unsigned int MMC_RSP_136 ;
 unsigned int MMC_RSP_BUSY ;
 unsigned int MMC_RSP_CRC ;
 unsigned int MMC_RSP_PRESENT ;

__attribute__((used)) static u16 cb710_encode_cmd_flags(struct cb710_mmc_reader *reader,
 struct mmc_command *cmd)
{
 unsigned int flags = cmd->flags;
 u16 cb_flags = 0;
 switch (flags & MMC_CMD_MASK) {
 case 131: cb_flags = CB710_MMC_CMD_AC; break;
 case 130: cb_flags = CB710_MMC_CMD_ADTC; break;
 case 129: cb_flags = CB710_MMC_CMD_BC; break;
 case 128: cb_flags = CB710_MMC_CMD_BCR; break;
 }

 if (flags & MMC_RSP_BUSY)
  cb_flags |= CB710_MMC_RSP_BUSY;

 cb_flags |= cmd->opcode << CB710_MMC_CMD_CODE_SHIFT;

 if (cmd->data && (cmd->data->flags & MMC_DATA_READ))
  cb_flags |= CB710_MMC_DATA_READ;

 if (flags & MMC_RSP_PRESENT) {
  cb_flags |= CB710_MMC_RSP_PRESENT;

  if (flags & MMC_RSP_136)
   cb_flags |= CB710_MMC_RSP_136;
  if (!(flags & MMC_RSP_CRC))
   cb_flags |= CB710_MMC_RSP_NO_CRC;
 }

 return cb_flags;
}
