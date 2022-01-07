
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct seq_file {struct device* private; } ;
struct device {int parent; } ;
struct ab8500 {int dummy; } ;


 scalar_t__ AB8500_FIRST_SIM_REG ;
 scalar_t__ AB8500_LAST_SIM_REG ;
 scalar_t__ AB8500_REGU_CTRL1 ;
 scalar_t__ AB8500_REGU_CTRL2 ;
 int AB8500_SUPPLY_CONTROL_CONFIG_1 ;
 scalar_t__ AB8500_SUPPLY_CONTROL_REG ;
 scalar_t__ AB8505_LAST_SIM_REG ;
 int abx500_get_register_interruptible (struct device*,scalar_t__,scalar_t__,int *) ;
 int abx500_set_register_interruptible (struct device*,scalar_t__,scalar_t__,int ) ;
 int dev_err (struct device*,char*,int) ;
 struct ab8500* dev_get_drvdata (int ) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ is_ab8505 (struct ab8500*) ;
 scalar_t__ is_ab9540 (struct ab8500*) ;
 int seq_printf (struct seq_file*,char*,scalar_t__,...) ;

__attribute__((used)) static int ab8500_modem_show(struct seq_file *s, void *p)
{
 struct device *dev = s->private;
 struct ab8500 *ab8500;
 int err;
 u8 value;
 u8 orig_value;
 u32 bank = AB8500_REGU_CTRL2;
 u32 last_sim_reg = AB8500_LAST_SIM_REG;
 u32 reg;

 ab8500 = dev_get_drvdata(dev->parent);
 dev_warn(dev, "WARNING! This operation can interfer with modem side\n"
  "and should only be done with care\n");

 err = abx500_get_register_interruptible(dev,
  AB8500_REGU_CTRL1, AB8500_SUPPLY_CONTROL_REG, &orig_value);
 if (err < 0)
  goto report_read_failure;


 err = abx500_set_register_interruptible(dev,
  AB8500_REGU_CTRL1, AB8500_SUPPLY_CONTROL_REG,
  AB8500_SUPPLY_CONTROL_CONFIG_1);
 if (err < 0)
  goto report_write_failure;

 seq_printf(s, " bank 0x%02X:\n", bank);

 if (is_ab9540(ab8500) || is_ab8505(ab8500))
  last_sim_reg = AB8505_LAST_SIM_REG;

 for (reg = AB8500_FIRST_SIM_REG; reg <= last_sim_reg; reg++) {
  err = abx500_get_register_interruptible(dev,
   bank, reg, &value);
  if (err < 0)
   goto report_read_failure;

  seq_printf(s, "  [0x%02X/0x%02X]: 0x%02X\n", bank, reg, value);
 }
 err = abx500_set_register_interruptible(dev,
  AB8500_REGU_CTRL1, AB8500_SUPPLY_CONTROL_REG, orig_value);
 if (err < 0)
  goto report_write_failure;

 return 0;

report_read_failure:
 dev_err(dev, "ab->read fail %d\n", err);
 return err;

report_write_failure:
 dev_err(dev, "ab->write fail %d\n", err);
 return err;
}
