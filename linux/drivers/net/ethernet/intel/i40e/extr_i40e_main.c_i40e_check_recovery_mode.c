
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct i40e_pf {TYPE_2__* pdev; int state; TYPE_3__ hw; } ;
struct TYPE_5__ {int dev; } ;


 int I40E_GL_FWSTS ;
 scalar_t__ I40E_GL_FWSTS_FWS1B_MASK ;
 scalar_t__ I40E_MAC_X722 ;
 scalar_t__ I40E_MAC_XL710 ;
 scalar_t__ I40E_X722_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK ;
 scalar_t__ I40E_X722_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK ;
 scalar_t__ I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK ;
 scalar_t__ I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK ;
 scalar_t__ I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_NVM_MASK ;
 scalar_t__ I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_TRANSITION_MASK ;
 int __I40E_RECOVERY_MODE ;
 int dev_info (int *,char*) ;
 int dev_notice (int *,char*) ;
 scalar_t__ rd32 (TYPE_3__*,int ) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;

__attribute__((used)) static bool i40e_check_recovery_mode(struct i40e_pf *pf)
{
 u32 val = rd32(&pf->hw, I40E_GL_FWSTS) & I40E_GL_FWSTS_FWS1B_MASK;
 bool is_recovery_mode = 0;

 if (pf->hw.mac.type == I40E_MAC_XL710)
  is_recovery_mode =
  val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK ||
  val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK ||
  val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_TRANSITION_MASK ||
  val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_NVM_MASK;
 if (pf->hw.mac.type == I40E_MAC_X722)
  is_recovery_mode =
  val == I40E_X722_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK ||
  val == I40E_X722_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK;
 if (is_recovery_mode) {
  dev_notice(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
  dev_notice(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
  set_bit(__I40E_RECOVERY_MODE, pf->state);

  return 1;
 }
 if (test_and_clear_bit(__I40E_RECOVERY_MODE, pf->state))
  dev_info(&pf->pdev->dev, "Reinitializing in normal mode with full functionality.\n");

 return 0;
}
