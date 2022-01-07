
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwtstamp_config {int dummy; } ;
struct mv88e6xxx_port_hwtstamp {struct hwtstamp_config tstamp_config; } ;
struct mv88e6xxx_chip {TYPE_1__* info; struct mv88e6xxx_port_hwtstamp* port_hwtstamp; } ;
struct ifreq {int ifr_data; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {int ptp_support; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;

int mv88e6xxx_port_hwtstamp_get(struct dsa_switch *ds, int port,
    struct ifreq *ifr)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 struct mv88e6xxx_port_hwtstamp *ps = &chip->port_hwtstamp[port];
 struct hwtstamp_config *config = &ps->tstamp_config;

 if (!chip->info->ptp_support)
  return -EOPNOTSUPP;

 return copy_to_user(ifr->ifr_data, config, sizeof(*config)) ?
  -EFAULT : 0;
}
