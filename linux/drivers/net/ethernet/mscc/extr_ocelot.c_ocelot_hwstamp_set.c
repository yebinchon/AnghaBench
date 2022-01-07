
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int ptp_cmd; struct ocelot* ocelot; } ;
struct ocelot {int ptp_lock; int hwtstamp_config; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
typedef int cfg ;


 int EFAULT ;
 int EINVAL ;
 int ERANGE ;
 int IFH_REW_OP_ORIGIN_PTP ;
 int IFH_REW_OP_TWO_STEP_PTP ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int memcpy (int *,struct hwtstamp_config*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ocelot_hwstamp_set(struct ocelot_port *port, struct ifreq *ifr)
{
 struct ocelot *ocelot = port->ocelot;
 struct hwtstamp_config cfg;

 if (copy_from_user(&cfg, ifr->ifr_data, sizeof(cfg)))
  return -EFAULT;


 if (cfg.flags)
  return -EINVAL;


 switch (cfg.tx_type) {
 case 129:
  port->ptp_cmd = IFH_REW_OP_TWO_STEP_PTP;
  break;
 case 128:



  port->ptp_cmd = IFH_REW_OP_ORIGIN_PTP;
  break;
 case 130:
  port->ptp_cmd = 0;
  break;
 default:
  return -ERANGE;
 }

 mutex_lock(&ocelot->ptp_lock);

 switch (cfg.rx_filter) {
 case 145:
  break;
 case 146:
 case 131:
 case 142:
 case 141:
 case 143:
 case 144:
 case 134:
 case 133:
 case 135:
 case 137:
 case 136:
 case 138:
 case 139:
 case 132:
 case 140:
  cfg.rx_filter = 139;
  break;
 default:
  mutex_unlock(&ocelot->ptp_lock);
  return -ERANGE;
 }


 memcpy(&ocelot->hwtstamp_config, &cfg, sizeof(cfg));
 mutex_unlock(&ocelot->ptp_lock);

 return copy_to_user(ifr->ifr_data, &cfg, sizeof(cfg)) ? -EFAULT : 0;
}
