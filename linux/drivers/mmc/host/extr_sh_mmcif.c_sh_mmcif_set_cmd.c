
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_mmcif_host {int bus_width; int timing; } ;
struct mmc_request {struct mmc_command* cmd; struct mmc_data* data; } ;
struct mmc_data {int blocks; } ;
struct mmc_command {int opcode; } ;
struct device {int dummy; } ;


 int CMD_SET_CMD12EN ;
 int CMD_SET_CMLTE ;
 int CMD_SET_CRC7C_BITS ;
 int CMD_SET_CRC7C_INTERNAL ;
 int CMD_SET_DARS ;
 int CMD_SET_DATW_1 ;
 int CMD_SET_DATW_4 ;
 int CMD_SET_DATW_8 ;
 int CMD_SET_DWEN ;
 int CMD_SET_RBSY ;
 int CMD_SET_RIDXC_BITS ;
 int CMD_SET_RTYP_17B ;
 int CMD_SET_RTYP_6B ;
 int CMD_SET_RTYP_NO ;
 int CMD_SET_WDAT ;
 int MMCIF_CE_BLOCK_SET ;
 int MMC_ALL_SEND_CID ;



 int MMC_READ_MULTIPLE_BLOCK ;





 int MMC_SEND_CID ;
 int MMC_SEND_CSD ;
 int MMC_SEND_OP_COND ;

 int MMC_WRITE_BLOCK ;
 int MMC_WRITE_MULTIPLE_BLOCK ;
 int dev_err (struct device*,char*) ;
 int mmc_resp_type (struct mmc_command*) ;
 int sh_mmcif_bitset (struct sh_mmcif_host*,int ,int) ;
 struct device* sh_mmcif_host_to_dev (struct sh_mmcif_host*) ;

__attribute__((used)) static u32 sh_mmcif_set_cmd(struct sh_mmcif_host *host,
       struct mmc_request *mrq)
{
 struct device *dev = sh_mmcif_host_to_dev(host);
 struct mmc_data *data = mrq->data;
 struct mmc_command *cmd = mrq->cmd;
 u32 opc = cmd->opcode;
 u32 tmp = 0;


 switch (mmc_resp_type(cmd)) {
 case 133:
  tmp |= CMD_SET_RTYP_NO;
  break;
 case 132:
 case 129:
  tmp |= CMD_SET_RTYP_6B;
  break;
 case 131:
  tmp |= CMD_SET_RBSY | CMD_SET_RTYP_6B;
  break;
 case 130:
  tmp |= CMD_SET_RTYP_17B;
  break;
 default:
  dev_err(dev, "Unsupported response type.\n");
  break;
 }


 if (data) {
  tmp |= CMD_SET_WDAT;
  switch (host->bus_width) {
  case 136:
   tmp |= CMD_SET_DATW_1;
   break;
  case 135:
   tmp |= CMD_SET_DATW_4;
   break;
  case 134:
   tmp |= CMD_SET_DATW_8;
   break;
  default:
   dev_err(dev, "Unsupported bus width.\n");
   break;
  }
  switch (host->timing) {
  case 128:







   tmp |= CMD_SET_DARS;
   break;
  }
 }

 if (opc == MMC_WRITE_BLOCK || opc == MMC_WRITE_MULTIPLE_BLOCK)
  tmp |= CMD_SET_DWEN;

 if (opc == MMC_READ_MULTIPLE_BLOCK || opc == MMC_WRITE_MULTIPLE_BLOCK) {
  tmp |= CMD_SET_CMLTE | CMD_SET_CMD12EN;
  sh_mmcif_bitset(host, MMCIF_CE_BLOCK_SET,
    data->blocks << 16);
 }

 if (opc == MMC_SEND_OP_COND || opc == MMC_ALL_SEND_CID ||
     opc == MMC_SEND_CSD || opc == MMC_SEND_CID)
  tmp |= CMD_SET_RIDXC_BITS;

 if (opc == MMC_SEND_OP_COND)
  tmp |= CMD_SET_CRC7C_BITS;

 if (opc == MMC_ALL_SEND_CID ||
  opc == MMC_SEND_CSD || opc == MMC_SEND_CID)
  tmp |= CMD_SET_CRC7C_INTERNAL;

 return (opc << 24) | tmp;
}
