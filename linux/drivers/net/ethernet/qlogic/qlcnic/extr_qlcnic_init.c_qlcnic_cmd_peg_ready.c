
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;



 int QLCNIC_CMDPEG_CHECK_DELAY ;
 int QLCNIC_CMDPEG_CHECK_RETRY_COUNT ;
 int QLCNIC_CMDPEG_STATE ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int const) ;
 int dev_err (int *,char*,int) ;
 int msleep (int ) ;

__attribute__((used)) static int qlcnic_cmd_peg_ready(struct qlcnic_adapter *adapter)
{
 u32 val;
 int retries = QLCNIC_CMDPEG_CHECK_RETRY_COUNT;

 do {
  val = QLC_SHARED_REG_RD32(adapter, QLCNIC_CMDPEG_STATE);

  switch (val) {
  case 129:
  case 130:
   return 0;
  case 128:
   goto out_err;
  default:
   break;
  }

  msleep(QLCNIC_CMDPEG_CHECK_DELAY);

 } while (--retries);

 QLC_SHARED_REG_WR32(adapter, QLCNIC_CMDPEG_STATE,
       128);

out_err:
 dev_err(&adapter->pdev->dev, "Command Peg initialization not "
        "complete, state: 0x%x.\n", val);
 return -EIO;
}
