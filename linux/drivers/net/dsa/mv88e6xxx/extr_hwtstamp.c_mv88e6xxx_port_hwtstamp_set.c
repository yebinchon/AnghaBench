
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_port_hwtstamp {int tstamp_config; } ;
struct mv88e6xxx_chip {TYPE_1__* info; struct mv88e6xxx_port_hwtstamp* port_hwtstamp; } ;
struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
typedef int config ;
struct TYPE_2__ {int ptp_support; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int memcpy (int *,struct hwtstamp_config*,int) ;
 int mv88e6xxx_set_hwtstamp_config (struct mv88e6xxx_chip*,int,struct hwtstamp_config*) ;

int mv88e6xxx_port_hwtstamp_set(struct dsa_switch *ds, int port,
    struct ifreq *ifr)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 struct mv88e6xxx_port_hwtstamp *ps = &chip->port_hwtstamp[port];
 struct hwtstamp_config config;
 int err;

 if (!chip->info->ptp_support)
  return -EOPNOTSUPP;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;

 err = mv88e6xxx_set_hwtstamp_config(chip, port, &config);
 if (err)
  return err;


 memcpy(&ps->tstamp_config, &config, sizeof(config));

 return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
  -EFAULT : 0;
}
