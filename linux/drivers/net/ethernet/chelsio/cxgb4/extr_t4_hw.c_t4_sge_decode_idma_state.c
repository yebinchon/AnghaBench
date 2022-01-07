
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char const* u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; int pdev_dev; } ;


 int ARRAY_SIZE (char const* const*) ;
 unsigned int CHELSIO_CHIP_VERSION (int ) ;



 int CH_WARN (struct adapter*,char*,...) ;



 int dev_err (int ,char*,unsigned int) ;
 scalar_t__ is_t4 (int ) ;
 int t4_read_reg (struct adapter*,char const* const) ;

void t4_sge_decode_idma_state(struct adapter *adapter, int state)
{
 static const char * const t4_decode[] = {
  "IDMA_IDLE",
  "IDMA_PUSH_MORE_CPL_FIFO",
  "IDMA_PUSH_CPL_MSG_HEADER_TO_FIFO",
  "Not used",
  "IDMA_PHYSADDR_SEND_PCIEHDR",
  "IDMA_PHYSADDR_SEND_PAYLOAD_FIRST",
  "IDMA_PHYSADDR_SEND_PAYLOAD",
  "IDMA_SEND_FIFO_TO_IMSG",
  "IDMA_FL_REQ_DATA_FL_PREP",
  "IDMA_FL_REQ_DATA_FL",
  "IDMA_FL_DROP",
  "IDMA_FL_H_REQ_HEADER_FL",
  "IDMA_FL_H_SEND_PCIEHDR",
  "IDMA_FL_H_PUSH_CPL_FIFO",
  "IDMA_FL_H_SEND_CPL",
  "IDMA_FL_H_SEND_IP_HDR_FIRST",
  "IDMA_FL_H_SEND_IP_HDR",
  "IDMA_FL_H_REQ_NEXT_HEADER_FL",
  "IDMA_FL_H_SEND_NEXT_PCIEHDR",
  "IDMA_FL_H_SEND_IP_HDR_PADDING",
  "IDMA_FL_D_SEND_PCIEHDR",
  "IDMA_FL_D_SEND_CPL_AND_IP_HDR",
  "IDMA_FL_D_REQ_NEXT_DATA_FL",
  "IDMA_FL_SEND_PCIEHDR",
  "IDMA_FL_PUSH_CPL_FIFO",
  "IDMA_FL_SEND_CPL",
  "IDMA_FL_SEND_PAYLOAD_FIRST",
  "IDMA_FL_SEND_PAYLOAD",
  "IDMA_FL_REQ_NEXT_DATA_FL",
  "IDMA_FL_SEND_NEXT_PCIEHDR",
  "IDMA_FL_SEND_PADDING",
  "IDMA_FL_SEND_COMPLETION_TO_IMSG",
  "IDMA_FL_SEND_FIFO_TO_IMSG",
  "IDMA_FL_REQ_DATAFL_DONE",
  "IDMA_FL_REQ_HEADERFL_DONE",
 };
 static const char * const t5_decode[] = {
  "IDMA_IDLE",
  "IDMA_ALMOST_IDLE",
  "IDMA_PUSH_MORE_CPL_FIFO",
  "IDMA_PUSH_CPL_MSG_HEADER_TO_FIFO",
  "IDMA_SGEFLRFLUSH_SEND_PCIEHDR",
  "IDMA_PHYSADDR_SEND_PCIEHDR",
  "IDMA_PHYSADDR_SEND_PAYLOAD_FIRST",
  "IDMA_PHYSADDR_SEND_PAYLOAD",
  "IDMA_SEND_FIFO_TO_IMSG",
  "IDMA_FL_REQ_DATA_FL",
  "IDMA_FL_DROP",
  "IDMA_FL_DROP_SEND_INC",
  "IDMA_FL_H_REQ_HEADER_FL",
  "IDMA_FL_H_SEND_PCIEHDR",
  "IDMA_FL_H_PUSH_CPL_FIFO",
  "IDMA_FL_H_SEND_CPL",
  "IDMA_FL_H_SEND_IP_HDR_FIRST",
  "IDMA_FL_H_SEND_IP_HDR",
  "IDMA_FL_H_REQ_NEXT_HEADER_FL",
  "IDMA_FL_H_SEND_NEXT_PCIEHDR",
  "IDMA_FL_H_SEND_IP_HDR_PADDING",
  "IDMA_FL_D_SEND_PCIEHDR",
  "IDMA_FL_D_SEND_CPL_AND_IP_HDR",
  "IDMA_FL_D_REQ_NEXT_DATA_FL",
  "IDMA_FL_SEND_PCIEHDR",
  "IDMA_FL_PUSH_CPL_FIFO",
  "IDMA_FL_SEND_CPL",
  "IDMA_FL_SEND_PAYLOAD_FIRST",
  "IDMA_FL_SEND_PAYLOAD",
  "IDMA_FL_REQ_NEXT_DATA_FL",
  "IDMA_FL_SEND_NEXT_PCIEHDR",
  "IDMA_FL_SEND_PADDING",
  "IDMA_FL_SEND_COMPLETION_TO_IMSG",
 };
 static const char * const t6_decode[] = {
  "IDMA_IDLE",
  "IDMA_PUSH_MORE_CPL_FIFO",
  "IDMA_PUSH_CPL_MSG_HEADER_TO_FIFO",
  "IDMA_SGEFLRFLUSH_SEND_PCIEHDR",
  "IDMA_PHYSADDR_SEND_PCIEHDR",
  "IDMA_PHYSADDR_SEND_PAYLOAD_FIRST",
  "IDMA_PHYSADDR_SEND_PAYLOAD",
  "IDMA_FL_REQ_DATA_FL",
  "IDMA_FL_DROP",
  "IDMA_FL_DROP_SEND_INC",
  "IDMA_FL_H_REQ_HEADER_FL",
  "IDMA_FL_H_SEND_PCIEHDR",
  "IDMA_FL_H_PUSH_CPL_FIFO",
  "IDMA_FL_H_SEND_CPL",
  "IDMA_FL_H_SEND_IP_HDR_FIRST",
  "IDMA_FL_H_SEND_IP_HDR",
  "IDMA_FL_H_REQ_NEXT_HEADER_FL",
  "IDMA_FL_H_SEND_NEXT_PCIEHDR",
  "IDMA_FL_H_SEND_IP_HDR_PADDING",
  "IDMA_FL_D_SEND_PCIEHDR",
  "IDMA_FL_D_SEND_CPL_AND_IP_HDR",
  "IDMA_FL_D_REQ_NEXT_DATA_FL",
  "IDMA_FL_SEND_PCIEHDR",
  "IDMA_FL_PUSH_CPL_FIFO",
  "IDMA_FL_SEND_CPL",
  "IDMA_FL_SEND_PAYLOAD_FIRST",
  "IDMA_FL_SEND_PAYLOAD",
  "IDMA_FL_REQ_NEXT_DATA_FL",
  "IDMA_FL_SEND_NEXT_PCIEHDR",
  "IDMA_FL_SEND_PADDING",
  "IDMA_FL_SEND_COMPLETION_TO_IMSG",
 };
 static const u32 sge_regs[] = {
  129,
  128,
  130,
 };
 const char **sge_idma_decode;
 int sge_idma_decode_nstates;
 int i;
 unsigned int chip_version = CHELSIO_CHIP_VERSION(adapter->params.chip);




 switch (chip_version) {
 case 133:
  sge_idma_decode = (const char **)t4_decode;
  sge_idma_decode_nstates = ARRAY_SIZE(t4_decode);
  break;

 case 132:
  sge_idma_decode = (const char **)t5_decode;
  sge_idma_decode_nstates = ARRAY_SIZE(t5_decode);
  break;

 case 131:
  sge_idma_decode = (const char **)t6_decode;
  sge_idma_decode_nstates = ARRAY_SIZE(t6_decode);
  break;

 default:
  dev_err(adapter->pdev_dev,
   "Unsupported chip version %d\n", chip_version);
  return;
 }

 if (is_t4(adapter->params.chip)) {
  sge_idma_decode = (const char **)t4_decode;
  sge_idma_decode_nstates = ARRAY_SIZE(t4_decode);
 } else {
  sge_idma_decode = (const char **)t5_decode;
  sge_idma_decode_nstates = ARRAY_SIZE(t5_decode);
 }

 if (state < sge_idma_decode_nstates)
  CH_WARN(adapter, "idma state %s\n", sge_idma_decode[state]);
 else
  CH_WARN(adapter, "idma state %d unknown\n", state);

 for (i = 0; i < ARRAY_SIZE(sge_regs); i++)
  CH_WARN(adapter, "SGE register %#x value %#x\n",
   sge_regs[i], t4_read_reg(adapter, sge_regs[i]));
}
