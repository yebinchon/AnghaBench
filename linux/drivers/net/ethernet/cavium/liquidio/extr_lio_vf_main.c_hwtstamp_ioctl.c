
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lio {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef int conf ;


 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 struct lio* GET_LIO (struct net_device*) ;
 int LIO_IFSTATE_RX_TIMESTAMP_ENABLED ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int ifstate_reset (struct lio*,int ) ;
 int ifstate_set (struct lio*,int ) ;

__attribute__((used)) static int hwtstamp_ioctl(struct net_device *netdev, struct ifreq *ifr)
{
 struct lio *lio = GET_LIO(netdev);
 struct hwtstamp_config conf;

 if (copy_from_user(&conf, ifr->ifr_data, sizeof(conf)))
  return -EFAULT;

 if (conf.flags)
  return -EINVAL;

 switch (conf.tx_type) {
 case 128:
 case 129:
  break;
 default:
  return -ERANGE;
 }

 switch (conf.rx_filter) {
 case 144:
  break;
 case 145:
 case 130:
 case 141:
 case 140:
 case 142:
 case 133:
 case 132:
 case 134:
 case 136:
 case 135:
 case 137:
 case 138:
 case 131:
 case 139:
 case 143:
  conf.rx_filter = 145;
  break;
 default:
  return -ERANGE;
 }

 if (conf.rx_filter == 145)
  ifstate_set(lio, LIO_IFSTATE_RX_TIMESTAMP_ENABLED);

 else
  ifstate_reset(lio, LIO_IFSTATE_RX_TIMESTAMP_ENABLED);

 return copy_to_user(ifr->ifr_data, &conf, sizeof(conf)) ? -EFAULT : 0;
}
