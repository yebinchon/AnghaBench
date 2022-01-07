
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_4__ {int autoneg; int forced_rx; int forced_tx; } ;
struct TYPE_3__ {int forced_speed; int advertised_speeds; int autoneg; } ;
struct qed_mcp_link_params {int eee; int loopback_mode; TYPE_2__ pause; TYPE_1__ speed; } ;
struct qed_link_params {int override_flags; int adv_speeds; int pause_config; int loopback_mode; int link_up; int eee; int forced_speed; int autoneg; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {struct qed_hwfn* hwfns; } ;


 int EBUSY ;
 int ENODEV ;
 int ETH_LOOPBACK_EXT ;
 int ETH_LOOPBACK_EXT_PHY ;
 int ETH_LOOPBACK_INT_PHY ;
 int ETH_LOOPBACK_MAC ;
 int ETH_LOOPBACK_NONE ;
 scalar_t__ IS_VF (struct qed_dev*) ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G ;
 int QED_IOV_WQ_VF_FORCE_LINK_QUERY_FLAG ;




 int QED_LINK_OVERRIDE_EEE_CONFIG ;
 int QED_LINK_OVERRIDE_LOOPBACK_MODE ;
 int QED_LINK_OVERRIDE_PAUSE_CONFIG ;
 int QED_LINK_OVERRIDE_SPEED_ADV_SPEEDS ;
 int QED_LINK_OVERRIDE_SPEED_AUTONEG ;
 int QED_LINK_OVERRIDE_SPEED_FORCED_SPEED ;
 int QED_LINK_PAUSE_AUTONEG_ENABLE ;
 int QED_LINK_PAUSE_RX_ENABLE ;
 int QED_LINK_PAUSE_TX_ENABLE ;
 int QED_LM_100000baseCR4_Full_BIT ;
 int QED_LM_100000baseKR4_Full_BIT ;
 int QED_LM_100000baseLR4_ER4_Full_BIT ;
 int QED_LM_100000baseSR4_Full_BIT ;
 int QED_LM_10000baseCR_Full_BIT ;
 int QED_LM_10000baseKR_Full_BIT ;
 int QED_LM_10000baseKX4_Full_BIT ;
 int QED_LM_10000baseLRM_Full_BIT ;
 int QED_LM_10000baseLR_Full_BIT ;
 int QED_LM_10000baseR_FEC_BIT ;
 int QED_LM_10000baseSR_Full_BIT ;
 int QED_LM_10000baseT_Full_BIT ;
 int QED_LM_1000baseKX_Full_BIT ;
 int QED_LM_1000baseT_Full_BIT ;
 int QED_LM_1000baseX_Full_BIT ;
 int QED_LM_20000baseKR2_Full_BIT ;
 int QED_LM_25000baseCR_Full_BIT ;
 int QED_LM_25000baseKR_Full_BIT ;
 int QED_LM_25000baseSR_Full_BIT ;
 int QED_LM_40000baseCR4_Full_BIT ;
 int QED_LM_40000baseKR4_Full_BIT ;
 int QED_LM_40000baseLR4_Full_BIT ;
 int QED_LM_40000baseSR4_Full_BIT ;
 int QED_LM_50000baseCR2_Full_BIT ;
 int QED_LM_50000baseKR2_Full_BIT ;
 int QED_LM_50000baseSR2_Full_BIT ;
 int memcpy (int *,int *,int) ;
 struct qed_mcp_link_params* qed_mcp_get_link_params (struct qed_hwfn*) ;
 int qed_mcp_set_link (struct qed_hwfn*,struct qed_ptt*,int ) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_schedule_iov (struct qed_hwfn*,int ) ;

__attribute__((used)) static int qed_set_link(struct qed_dev *cdev, struct qed_link_params *params)
{
 struct qed_hwfn *hwfn;
 struct qed_mcp_link_params *link_params;
 struct qed_ptt *ptt;
 u32 sup_caps;
 int rc;

 if (!cdev)
  return -ENODEV;


 hwfn = &cdev->hwfns[0];





 if (IS_VF(cdev)) {
  qed_schedule_iov(hwfn, QED_IOV_WQ_VF_FORCE_LINK_QUERY_FLAG);
  return 0;
 }

 ptt = qed_ptt_acquire(hwfn);
 if (!ptt)
  return -EBUSY;

 link_params = qed_mcp_get_link_params(hwfn);
 if (params->override_flags & QED_LINK_OVERRIDE_SPEED_AUTONEG)
  link_params->speed.autoneg = params->autoneg;
 if (params->override_flags & QED_LINK_OVERRIDE_SPEED_ADV_SPEEDS) {
  link_params->speed.advertised_speeds = 0;
  sup_caps = QED_LM_1000baseT_Full_BIT |
      QED_LM_1000baseKX_Full_BIT |
      QED_LM_1000baseX_Full_BIT;
  if (params->adv_speeds & sup_caps)
   link_params->speed.advertised_speeds |=
       NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G;
  sup_caps = QED_LM_10000baseT_Full_BIT |
      QED_LM_10000baseKR_Full_BIT |
      QED_LM_10000baseKX4_Full_BIT |
      QED_LM_10000baseR_FEC_BIT |
      QED_LM_10000baseCR_Full_BIT |
      QED_LM_10000baseSR_Full_BIT |
      QED_LM_10000baseLR_Full_BIT |
      QED_LM_10000baseLRM_Full_BIT;
  if (params->adv_speeds & sup_caps)
   link_params->speed.advertised_speeds |=
       NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G;
  if (params->adv_speeds & QED_LM_20000baseKR2_Full_BIT)
   link_params->speed.advertised_speeds |=
    NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G;
  sup_caps = QED_LM_25000baseKR_Full_BIT |
      QED_LM_25000baseCR_Full_BIT |
      QED_LM_25000baseSR_Full_BIT;
  if (params->adv_speeds & sup_caps)
   link_params->speed.advertised_speeds |=
       NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G;
  sup_caps = QED_LM_40000baseLR4_Full_BIT |
      QED_LM_40000baseKR4_Full_BIT |
      QED_LM_40000baseCR4_Full_BIT |
      QED_LM_40000baseSR4_Full_BIT;
  if (params->adv_speeds & sup_caps)
   link_params->speed.advertised_speeds |=
    NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G;
  sup_caps = QED_LM_50000baseKR2_Full_BIT |
      QED_LM_50000baseCR2_Full_BIT |
      QED_LM_50000baseSR2_Full_BIT;
  if (params->adv_speeds & sup_caps)
   link_params->speed.advertised_speeds |=
       NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G;
  sup_caps = QED_LM_100000baseKR4_Full_BIT |
      QED_LM_100000baseSR4_Full_BIT |
      QED_LM_100000baseCR4_Full_BIT |
      QED_LM_100000baseLR4_ER4_Full_BIT;
  if (params->adv_speeds & sup_caps)
   link_params->speed.advertised_speeds |=
       NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G;
 }
 if (params->override_flags & QED_LINK_OVERRIDE_SPEED_FORCED_SPEED)
  link_params->speed.forced_speed = params->forced_speed;
 if (params->override_flags & QED_LINK_OVERRIDE_PAUSE_CONFIG) {
  if (params->pause_config & QED_LINK_PAUSE_AUTONEG_ENABLE)
   link_params->pause.autoneg = 1;
  else
   link_params->pause.autoneg = 0;
  if (params->pause_config & QED_LINK_PAUSE_RX_ENABLE)
   link_params->pause.forced_rx = 1;
  else
   link_params->pause.forced_rx = 0;
  if (params->pause_config & QED_LINK_PAUSE_TX_ENABLE)
   link_params->pause.forced_tx = 1;
  else
   link_params->pause.forced_tx = 0;
 }
 if (params->override_flags & QED_LINK_OVERRIDE_LOOPBACK_MODE) {
  switch (params->loopback_mode) {
  case 129:
   link_params->loopback_mode = ETH_LOOPBACK_INT_PHY;
   break;
  case 130:
   link_params->loopback_mode = ETH_LOOPBACK_EXT_PHY;
   break;
  case 131:
   link_params->loopback_mode = ETH_LOOPBACK_EXT;
   break;
  case 128:
   link_params->loopback_mode = ETH_LOOPBACK_MAC;
   break;
  default:
   link_params->loopback_mode = ETH_LOOPBACK_NONE;
   break;
  }
 }

 if (params->override_flags & QED_LINK_OVERRIDE_EEE_CONFIG)
  memcpy(&link_params->eee, &params->eee,
         sizeof(link_params->eee));

 rc = qed_mcp_set_link(hwfn, ptt, params->link_up);

 qed_ptt_release(hwfn, ptt);

 return rc;
}
