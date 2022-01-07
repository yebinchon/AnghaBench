
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int const tx_type; int rx_filter; } ;
struct port_info {int mdio_addr; int rxtstamp; int ptp_enable; TYPE_2__ tstamp_config; int port_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int ifr_data; } ;
struct TYPE_4__ {int chip; } ;
struct adapter {unsigned int pf; TYPE_1__ params; } ;


 int EFAULT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ERANGE ;
 int PTP_TS_L2_L4 ;
 int PTP_TS_L4 ;





 int copy_from_user (TYPE_2__*,int ,int) ;
 int copy_to_user (int ,TYPE_2__*,int) ;
 int cxgb4_ptp_redirect_rx_packet (struct adapter*,struct port_info*) ;
 int cxgb4_ptp_txtype (struct adapter*,int ) ;
 int cxgb4_ptprx_timestamping (struct port_info*,int ,int ) ;
 int is_t4 (int ) ;
 int mdio_phy_id_devad (int) ;
 int mdio_phy_id_is_c45 (int) ;
 int mdio_phy_id_prtad (int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_mdio_rd (struct adapter*,unsigned int,int,int,int,int *) ;
 int t4_mdio_wr (struct adapter*,unsigned int,int,int,int,int ) ;

__attribute__((used)) static int cxgb_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 unsigned int mbox;
 int ret = 0, prtad, devad;
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 struct mii_ioctl_data *data = (struct mii_ioctl_data *)&req->ifr_data;

 switch (cmd) {
 case 131:
  if (pi->mdio_addr < 0)
   return -EOPNOTSUPP;
  data->phy_id = pi->mdio_addr;
  break;
 case 130:
 case 128:
  if (mdio_phy_id_is_c45(data->phy_id)) {
   prtad = mdio_phy_id_prtad(data->phy_id);
   devad = mdio_phy_id_devad(data->phy_id);
  } else if (data->phy_id < 32) {
   prtad = data->phy_id;
   devad = 0;
   data->reg_num &= 0x1f;
  } else
   return -EINVAL;

  mbox = pi->adapter->pf;
  if (cmd == 130)
   ret = t4_mdio_rd(pi->adapter, mbox, prtad, devad,
      data->reg_num, &data->val_out);
  else
   ret = t4_mdio_wr(pi->adapter, mbox, prtad, devad,
      data->reg_num, data->val_in);
  break;
 case 132:
  return copy_to_user(req->ifr_data, &pi->tstamp_config,
        sizeof(pi->tstamp_config)) ?
   -EFAULT : 0;
 case 129:
  if (copy_from_user(&pi->tstamp_config, req->ifr_data,
       sizeof(pi->tstamp_config)))
   return -EFAULT;

  if (!is_t4(adapter->params.chip)) {
   switch (pi->tstamp_config.tx_type) {
   case 134:
   case 133:
    break;
   default:
    return -ERANGE;
   }

   switch (pi->tstamp_config.rx_filter) {
   case 142:
    pi->rxtstamp = 0;
    break;
   case 140:
   case 136:
    cxgb4_ptprx_timestamping(pi, pi->port_id,
        PTP_TS_L4);
    break;
   case 138:
    cxgb4_ptprx_timestamping(pi, pi->port_id,
        PTP_TS_L2_L4);
    break;
   case 143:
   case 139:
   case 141:
   case 135:
   case 137:
    pi->rxtstamp = 1;
    break;
   default:
    pi->tstamp_config.rx_filter =
     142;
    return -ERANGE;
   }

   if ((pi->tstamp_config.tx_type == 134) &&
       (pi->tstamp_config.rx_filter ==
    142)) {
    if (cxgb4_ptp_txtype(adapter, pi->port_id) >= 0)
     pi->ptp_enable = 0;
   }

   if (pi->tstamp_config.rx_filter !=
    142) {
    if (cxgb4_ptp_redirect_rx_packet(adapter,
         pi) >= 0)
     pi->ptp_enable = 1;
   }
  } else {

   switch (pi->tstamp_config.rx_filter) {
   case 142:
   pi->rxtstamp = 0;
   break;
   case 143:
   pi->rxtstamp = 1;
   break;
   default:
   pi->tstamp_config.rx_filter =
   142;
   return -ERANGE;
   }
  }
  return copy_to_user(req->ifr_data, &pi->tstamp_config,
        sizeof(pi->tstamp_config)) ?
   -EFAULT : 0;
 default:
  return -EOPNOTSUPP;
 }
 return ret;
}
