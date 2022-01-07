
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_3__* ahw; TYPE_1__* pdev; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_2__ idc; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_MBX_RSP (int ) ;
 int QLC_83XX_IDC_COMP_AEN ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*,int ) ;

__attribute__((used)) static void qlcnic_83xx_handle_idc_comp_aen(struct qlcnic_adapter *adapter,
         u32 data[])
{
 dev_dbg(&adapter->pdev->dev, "Completion AEN:0x%x.\n",
  QLCNIC_MBX_RSP(data[0]));
 clear_bit(QLC_83XX_IDC_COMP_AEN, &adapter->ahw->idc.status);
 return;
}
