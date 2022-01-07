
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_dcb_capability {int tsa_capability; int ets_capability; scalar_t__ max_num_tc; scalar_t__ max_ets_tc; scalar_t__ max_pfc_tc; } ;
struct qlcnic_dcb {TYPE_3__* adapter; TYPE_1__* cfg; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct qlcnic_dcb_capability capability; } ;


 int EINVAL ;
 scalar_t__ QLC_DCB_ETS_SUPPORT (int ) ;
 scalar_t__ QLC_DCB_MAX_NUM_ETS_TC (int ) ;
 scalar_t__ QLC_DCB_MAX_NUM_PFC_TC (int ) ;
 scalar_t__ QLC_DCB_MAX_NUM_TC (int ) ;
 scalar_t__ QLC_DCB_MAX_TC ;
 scalar_t__ QLC_DCB_TSA_SUPPORT (int ) ;
 int dev_err (int *,char*) ;
 int memset (struct qlcnic_dcb_capability*,int ,int) ;
 int qlcnic_dcb_query_hw_capability (struct qlcnic_dcb*,char*) ;

__attribute__((used)) static int __qlcnic_dcb_get_capability(struct qlcnic_dcb *dcb, u32 *val)
{
 struct qlcnic_dcb_capability *cap = &dcb->cfg->capability;
 u32 mbx_out;
 int err;

 memset(cap, 0, sizeof(struct qlcnic_dcb_capability));

 err = qlcnic_dcb_query_hw_capability(dcb, (char *)val);
 if (err)
  return err;

 mbx_out = *val;
 if (QLC_DCB_TSA_SUPPORT(mbx_out))
  cap->tsa_capability = 1;

 if (QLC_DCB_ETS_SUPPORT(mbx_out))
  cap->ets_capability = 1;

 cap->max_num_tc = QLC_DCB_MAX_NUM_TC(mbx_out);
 cap->max_ets_tc = QLC_DCB_MAX_NUM_ETS_TC(mbx_out);
 cap->max_pfc_tc = QLC_DCB_MAX_NUM_PFC_TC(mbx_out);

 if (cap->max_num_tc > QLC_DCB_MAX_TC ||
     cap->max_ets_tc > cap->max_num_tc ||
     cap->max_pfc_tc > cap->max_num_tc) {
  dev_err(&dcb->adapter->pdev->dev, "Invalid DCB configuration\n");
  return -EINVAL;
 }

 return err;
}
