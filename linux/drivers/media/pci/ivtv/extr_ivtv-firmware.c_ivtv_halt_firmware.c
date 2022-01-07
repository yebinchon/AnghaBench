
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * mbox; } ;
struct TYPE_3__ {int mbox; } ;
struct ivtv {scalar_t__ has_cx23415; TYPE_2__ dec_mbox; TYPE_1__ enc_mbox; } ;


 int CX2341X_DEC_HALT_FW ;
 int CX2341X_ENC_HALT_FW ;
 int IVTV_CMD_AO_STOP ;
 int IVTV_CMD_APU_PING ;
 int IVTV_CMD_HW_BLOCKS_RST ;
 int IVTV_CMD_SDRAM_PRECHARGE_INIT ;
 int IVTV_CMD_SDRAM_REFRESH_INIT ;
 int IVTV_CMD_SPU_STOP ;
 int IVTV_CMD_VDM_STOP ;
 int IVTV_CMD_VPU_STOP15 ;
 int IVTV_CMD_VPU_STOP16 ;
 int IVTV_DEBUG_INFO (char*,...) ;
 int IVTV_REG_AO ;
 int IVTV_REG_APU ;
 int IVTV_REG_DEC_SDRAM_PRECHARGE ;
 int IVTV_REG_DEC_SDRAM_REFRESH ;
 int IVTV_REG_ENC_SDRAM_PRECHARGE ;
 int IVTV_REG_ENC_SDRAM_REFRESH ;
 int IVTV_REG_HW_BLOCKS ;
 int IVTV_REG_SPU ;
 int IVTV_REG_VDM ;
 int IVTV_REG_VPU ;
 int IVTV_SDRAM_SLEEPTIME ;
 int ivtv_msleep_timeout (int,int ) ;
 int ivtv_vapi (struct ivtv*,int ,int ) ;
 int write_reg (int ,int ) ;

void ivtv_halt_firmware(struct ivtv *itv)
{
 IVTV_DEBUG_INFO("Preparing for firmware halt.\n");
 if (itv->has_cx23415 && itv->dec_mbox.mbox)
  ivtv_vapi(itv, CX2341X_DEC_HALT_FW, 0);
 if (itv->enc_mbox.mbox)
  ivtv_vapi(itv, CX2341X_ENC_HALT_FW, 0);

 ivtv_msleep_timeout(10, 0);
 itv->enc_mbox.mbox = itv->dec_mbox.mbox = ((void*)0);

 IVTV_DEBUG_INFO("Stopping VDM\n");
 write_reg(IVTV_CMD_VDM_STOP, IVTV_REG_VDM);

 IVTV_DEBUG_INFO("Stopping AO\n");
 write_reg(IVTV_CMD_AO_STOP, IVTV_REG_AO);

 IVTV_DEBUG_INFO("pinging (?) APU\n");
 write_reg(IVTV_CMD_APU_PING, IVTV_REG_APU);

 IVTV_DEBUG_INFO("Stopping VPU\n");
 if (!itv->has_cx23415)
  write_reg(IVTV_CMD_VPU_STOP16, IVTV_REG_VPU);
 else
  write_reg(IVTV_CMD_VPU_STOP15, IVTV_REG_VPU);

 IVTV_DEBUG_INFO("Resetting Hw Blocks\n");
 write_reg(IVTV_CMD_HW_BLOCKS_RST, IVTV_REG_HW_BLOCKS);

 IVTV_DEBUG_INFO("Stopping SPU\n");
 write_reg(IVTV_CMD_SPU_STOP, IVTV_REG_SPU);

 ivtv_msleep_timeout(10, 0);

 IVTV_DEBUG_INFO("init Encoder SDRAM pre-charge\n");
 write_reg(IVTV_CMD_SDRAM_PRECHARGE_INIT, IVTV_REG_ENC_SDRAM_PRECHARGE);

 IVTV_DEBUG_INFO("init Encoder SDRAM refresh to 1us\n");
 write_reg(IVTV_CMD_SDRAM_REFRESH_INIT, IVTV_REG_ENC_SDRAM_REFRESH);

 if (itv->has_cx23415) {
  IVTV_DEBUG_INFO("init Decoder SDRAM pre-charge\n");
  write_reg(IVTV_CMD_SDRAM_PRECHARGE_INIT, IVTV_REG_DEC_SDRAM_PRECHARGE);

  IVTV_DEBUG_INFO("init Decoder SDRAM refresh to 1us\n");
  write_reg(IVTV_CMD_SDRAM_REFRESH_INIT, IVTV_REG_DEC_SDRAM_REFRESH);
 }

 IVTV_DEBUG_INFO("Sleeping for %dms\n", IVTV_SDRAM_SLEEPTIME);
 ivtv_msleep_timeout(IVTV_SDRAM_SLEEPTIME, 0);
}
