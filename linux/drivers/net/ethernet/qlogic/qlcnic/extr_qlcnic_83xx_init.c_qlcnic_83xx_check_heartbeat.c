
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_adapter {scalar_t__ heartbeat; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int QLCNIC_FWERROR_CODE (scalar_t__) ;
 int QLCNIC_HEARTBEAT_CHECK_RETRY_COUNT ;
 int QLCNIC_HEARTBEAT_PERIOD_MSECS ;
 int QLCNIC_PEG_ALIVE_COUNTER ;
 int QLCNIC_PEG_HALT_STATUS1 ;
 int QLCNIC_PEG_HALT_STATUS2 ;
 int QLCNIC_RCODE_SUCCESS ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int QLC_83XX_CRB_PEG_NET_0 ;
 int QLC_83XX_CRB_PEG_NET_1 ;
 int QLC_83XX_CRB_PEG_NET_2 ;
 int QLC_83XX_CRB_PEG_NET_3 ;
 int QLC_83XX_CRB_PEG_NET_4 ;
 void* QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__,void*,int ,int ,int ,int ,int ) ;
 int msleep (int ) ;
 int qlcnic_83xx_disable_pause_frames (struct qlcnic_adapter*) ;
 int qlcnic_83xx_take_eport_out_of_reset (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_check_heartbeat(struct qlcnic_adapter *p_dev)
{
 u32 heartbeat, peg_status;
 int retries, ret = -EIO, err = 0;

 retries = QLCNIC_HEARTBEAT_CHECK_RETRY_COUNT;
 p_dev->heartbeat = QLC_SHARED_REG_RD32(p_dev,
            QLCNIC_PEG_ALIVE_COUNTER);

 do {
  msleep(QLCNIC_HEARTBEAT_PERIOD_MSECS);
  heartbeat = QLC_SHARED_REG_RD32(p_dev,
      QLCNIC_PEG_ALIVE_COUNTER);
  if (heartbeat != p_dev->heartbeat) {
   ret = QLCNIC_RCODE_SUCCESS;
   break;
  }
 } while (--retries);

 if (ret) {
  dev_err(&p_dev->pdev->dev, "firmware hang detected\n");
  qlcnic_83xx_take_eport_out_of_reset(p_dev);
  qlcnic_83xx_disable_pause_frames(p_dev);
  peg_status = QLC_SHARED_REG_RD32(p_dev,
       QLCNIC_PEG_HALT_STATUS1);
  dev_info(&p_dev->pdev->dev, "Dumping HW/FW registers\n"
    "PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\n"
    "PEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\n"
    "PEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\n"
    "PEG_NET_4_PC: 0x%x\n", peg_status,
    QLC_SHARED_REG_RD32(p_dev, QLCNIC_PEG_HALT_STATUS2),
    QLCRD32(p_dev, QLC_83XX_CRB_PEG_NET_0, &err),
    QLCRD32(p_dev, QLC_83XX_CRB_PEG_NET_1, &err),
    QLCRD32(p_dev, QLC_83XX_CRB_PEG_NET_2, &err),
    QLCRD32(p_dev, QLC_83XX_CRB_PEG_NET_3, &err),
    QLCRD32(p_dev, QLC_83XX_CRB_PEG_NET_4, &err));

  if (QLCNIC_FWERROR_CODE(peg_status) == 0x67)
   dev_err(&p_dev->pdev->dev,
    "Device is being reset err code 0x00006700.\n");
 }

 return ret;
}
