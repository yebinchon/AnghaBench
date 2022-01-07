
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv88e6xxx_ptp_ops {int rx_filters; int (* global_disable ) (struct mv88e6xxx_chip*) ;int (* port_disable ) (struct mv88e6xxx_chip*,int) ;int (* port_enable ) (struct mv88e6xxx_chip*,int) ;int (* global_enable ) (struct mv88e6xxx_chip*) ;} ;
struct mv88e6xxx_port_hwtstamp {int state; } ;
struct mv88e6xxx_chip {int enable_count; int dev; struct mv88e6xxx_port_hwtstamp* port_hwtstamp; TYPE_2__* info; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct mv88e6xxx_ptp_ops* ptp_ops; } ;


 int BIT (int) ;
 int EINVAL ;
 int ERANGE ;
 int MV88E6XXX_HWTSTAMP_ENABLED ;
 int clear_bit_unlock (int ,int *) ;
 int dev_dbg (int ,char*,int) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mv88e6xxx_chip*) ;
 int stub2 (struct mv88e6xxx_chip*,int) ;
 int stub3 (struct mv88e6xxx_chip*,int) ;
 int stub4 (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_set_hwtstamp_config(struct mv88e6xxx_chip *chip, int port,
      struct hwtstamp_config *config)
{
 const struct mv88e6xxx_ptp_ops *ptp_ops = chip->info->ops->ptp_ops;
 struct mv88e6xxx_port_hwtstamp *ps = &chip->port_hwtstamp[port];
 bool tstamp_enable = 0;




 clear_bit_unlock(MV88E6XXX_HWTSTAMP_ENABLED, &ps->state);


 if (config->flags)
  return -EINVAL;

 switch (config->tx_type) {
 case 129:
  tstamp_enable = 0;
  break;
 case 128:
  tstamp_enable = 1;
  break;
 default:
  return -ERANGE;
 }





 if (!(BIT(config->rx_filter) & ptp_ops->rx_filters)) {
  config->rx_filter = 139;
  dev_dbg(chip->dev, "Unsupported rx_filter %d\n",
   config->rx_filter);
  return -ERANGE;
 }

 switch (config->rx_filter) {
 case 139:
  tstamp_enable = 0;
  break;
 case 132:
 case 131:
 case 133:
 case 135:
 case 134:
 case 136:
 case 137:
 case 130:
 case 138:
  config->rx_filter = 137;
  break;
 case 140:
 default:
  config->rx_filter = 139;
  return -ERANGE;
 }

 mv88e6xxx_reg_lock(chip);
 if (tstamp_enable) {
  chip->enable_count += 1;
  if (chip->enable_count == 1 && ptp_ops->global_enable)
   ptp_ops->global_enable(chip);
  if (ptp_ops->port_enable)
   ptp_ops->port_enable(chip, port);
 } else {
  if (ptp_ops->port_disable)
   ptp_ops->port_disable(chip, port);
  chip->enable_count -= 1;
  if (chip->enable_count == 0 && ptp_ops->global_disable)
   ptp_ops->global_disable(chip);
 }
 mv88e6xxx_reg_unlock(chip);




 if (tstamp_enable)
  set_bit(MV88E6XXX_HWTSTAMP_ENABLED, &ps->state);

 return 0;
}
