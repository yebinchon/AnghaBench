
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_ptp {int hw_ts_ioctl_called; int rx_filter; int tx_type; } ;
struct qede_dev {struct qede_ptp* ptp; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int rx_filter; int tx_type; scalar_t__ flags; } ;
typedef int config ;


 int DP_ERR (struct qede_dev*,char*) ;
 int DP_VERBOSE (struct qede_dev*,int ,char*,int ,int ) ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int QED_MSG_DEBUG ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int qede_ptp_cfg_filters (struct qede_dev*) ;

int qede_ptp_hw_ts(struct qede_dev *edev, struct ifreq *ifr)
{
 struct hwtstamp_config config;
 struct qede_ptp *ptp;
 int rc;

 ptp = edev->ptp;
 if (!ptp)
  return -EIO;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;

 DP_VERBOSE(edev, QED_MSG_DEBUG,
     "HWTSTAMP IOCTL: Requested tx_type = %d, requested rx_filters = %d\n",
     config.tx_type, config.rx_filter);

 if (config.flags) {
  DP_ERR(edev, "config.flags is reserved for future use\n");
  return -EINVAL;
 }

 ptp->hw_ts_ioctl_called = 1;
 ptp->tx_type = config.tx_type;
 ptp->rx_filter = config.rx_filter;

 rc = qede_ptp_cfg_filters(edev);
 if (rc)
  return rc;

 config.rx_filter = ptp->rx_filter;

 return copy_to_user(ifr->ifr_data, &config,
       sizeof(config)) ? -EFAULT : 0;
}
