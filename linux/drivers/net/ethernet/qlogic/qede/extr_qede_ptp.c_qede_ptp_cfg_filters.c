
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_ptp {int tx_type; int rx_filter; int lock; TYPE_1__* ops; int hw_ts_ioctl_called; } ;
struct qede_dev {int cdev; int flags; struct qede_ptp* ptp; } ;
typedef enum qed_ptp_hwtstamp_tx_type { ____Placeholder_qed_ptp_hwtstamp_tx_type } qed_ptp_hwtstamp_tx_type ;
typedef enum qed_ptp_filter_type { ____Placeholder_qed_ptp_filter_type } qed_ptp_filter_type ;
struct TYPE_2__ {int (* cfg_filters ) (int ,int,int) ;} ;


 int DP_ERR (struct qede_dev*,char*) ;
 int DP_INFO (struct qede_dev*,char*) ;
 int EIO ;
 int ERANGE ;
 int QEDE_FLAGS_TX_TIMESTAMPING_EN ;
 int QED_PTP_FILTER_ALL ;
 int QED_PTP_FILTER_NONE ;
 int QED_PTP_FILTER_V1_L4_EVENT ;
 int QED_PTP_FILTER_V1_L4_GEN ;
 int QED_PTP_FILTER_V2_EVENT ;
 int QED_PTP_FILTER_V2_GEN ;
 int QED_PTP_FILTER_V2_L2_EVENT ;
 int QED_PTP_FILTER_V2_L2_GEN ;
 int QED_PTP_FILTER_V2_L4_EVENT ;
 int QED_PTP_FILTER_V2_L4_GEN ;
 int QED_PTP_HWTSTAMP_TX_OFF ;
 int QED_PTP_HWTSTAMP_TX_ON ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int qede_ptp_cfg_filters(struct qede_dev *edev)
{
 enum qed_ptp_hwtstamp_tx_type tx_type = QED_PTP_HWTSTAMP_TX_ON;
 enum qed_ptp_filter_type rx_filter = QED_PTP_FILTER_NONE;
 struct qede_ptp *ptp = edev->ptp;

 if (!ptp)
  return -EIO;

 if (!ptp->hw_ts_ioctl_called) {
  DP_INFO(edev, "TS IOCTL not called\n");
  return 0;
 }

 switch (ptp->tx_type) {
 case 129:
  set_bit(QEDE_FLAGS_TX_TIMESTAMPING_EN, &edev->flags);
  tx_type = QED_PTP_HWTSTAMP_TX_ON;
  break;

 case 130:
  clear_bit(QEDE_FLAGS_TX_TIMESTAMPING_EN, &edev->flags);
  tx_type = QED_PTP_HWTSTAMP_TX_OFF;
  break;

 case 128:
  DP_ERR(edev, "One-step timestamping is not supported\n");
  return -ERANGE;
 }

 spin_lock_bh(&ptp->lock);
 switch (ptp->rx_filter) {
 case 145:
  rx_filter = QED_PTP_FILTER_NONE;
  break;
 case 146:
 case 131:
 case 144:
  ptp->rx_filter = 145;
  rx_filter = QED_PTP_FILTER_ALL;
  break;
 case 142:
  ptp->rx_filter = 142;
  rx_filter = QED_PTP_FILTER_V1_L4_EVENT;
  break;
 case 141:
 case 143:
  ptp->rx_filter = 142;

  rx_filter = QED_PTP_FILTER_V1_L4_GEN;
  break;
 case 134:
  ptp->rx_filter = 134;
  rx_filter = QED_PTP_FILTER_V2_L4_EVENT;
  break;
 case 133:
 case 135:
  ptp->rx_filter = 134;

  rx_filter = QED_PTP_FILTER_V2_L4_GEN;
  break;
 case 137:
  ptp->rx_filter = 137;
  rx_filter = QED_PTP_FILTER_V2_L2_EVENT;
  break;
 case 136:
 case 138:
  ptp->rx_filter = 137;

  rx_filter = QED_PTP_FILTER_V2_L2_GEN;
  break;
 case 139:
  ptp->rx_filter = 139;
  rx_filter = QED_PTP_FILTER_V2_EVENT;
  break;
 case 132:
 case 140:
  ptp->rx_filter = 139;

  rx_filter = QED_PTP_FILTER_V2_GEN;
  break;
 }

 ptp->ops->cfg_filters(edev->cdev, rx_filter, tx_type);

 spin_unlock_bh(&ptp->lock);

 return 0;
}
