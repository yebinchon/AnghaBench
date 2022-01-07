
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,int) ;
 int EAGAIN ;
 int EOPNOTSUPP ;
 int QED_MSG_DEBUG ;

 struct qede_dev* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int qede_ptp_hw_ts (struct qede_dev*,struct ifreq*) ;

__attribute__((used)) static int qede_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct qede_dev *edev = netdev_priv(dev);

 if (!netif_running(dev))
  return -EAGAIN;

 switch (cmd) {
 case 128:
  return qede_ptp_hw_ts(edev, ifr);
 default:
  DP_VERBOSE(edev, QED_MSG_DEBUG,
      "default IOCTL cmd 0x%x\n", cmd);
  return -EOPNOTSUPP;
 }

 return 0;
}
