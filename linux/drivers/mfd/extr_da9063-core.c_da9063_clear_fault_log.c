
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9063 {int dev; int regmap; } ;


 int DA9063_KEY_RESET ;
 int DA9063_NSHUTDOWN ;
 int DA9063_POR ;
 int DA9063_REG_FAULT_LOG ;
 int DA9063_TEMP_CRIT ;
 int DA9063_TWD_ERROR ;
 int DA9063_VDD_FAULT ;
 int DA9063_VDD_START ;
 int DA9063_WAIT_SHUT ;
 int EIO ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int da9063_clear_fault_log(struct da9063 *da9063)
{
 int ret = 0;
 int fault_log = 0;

 ret = regmap_read(da9063->regmap, DA9063_REG_FAULT_LOG, &fault_log);
 if (ret < 0) {
  dev_err(da9063->dev, "Cannot read FAULT_LOG.\n");
  return -EIO;
 }

 if (fault_log) {
  if (fault_log & DA9063_TWD_ERROR)
   dev_dbg(da9063->dev,
    "Fault log entry detected: DA9063_TWD_ERROR\n");
  if (fault_log & DA9063_POR)
   dev_dbg(da9063->dev,
    "Fault log entry detected: DA9063_POR\n");
  if (fault_log & DA9063_VDD_FAULT)
   dev_dbg(da9063->dev,
    "Fault log entry detected: DA9063_VDD_FAULT\n");
  if (fault_log & DA9063_VDD_START)
   dev_dbg(da9063->dev,
    "Fault log entry detected: DA9063_VDD_START\n");
  if (fault_log & DA9063_TEMP_CRIT)
   dev_dbg(da9063->dev,
    "Fault log entry detected: DA9063_TEMP_CRIT\n");
  if (fault_log & DA9063_KEY_RESET)
   dev_dbg(da9063->dev,
    "Fault log entry detected: DA9063_KEY_RESET\n");
  if (fault_log & DA9063_NSHUTDOWN)
   dev_dbg(da9063->dev,
    "Fault log entry detected: DA9063_NSHUTDOWN\n");
  if (fault_log & DA9063_WAIT_SHUT)
   dev_dbg(da9063->dev,
    "Fault log entry detected: DA9063_WAIT_SHUT\n");
 }

 ret = regmap_write(da9063->regmap,
      DA9063_REG_FAULT_LOG,
      fault_log);
 if (ret < 0)
  dev_err(da9063->dev,
   "Cannot reset FAULT_LOG values %d\n", ret);

 return ret;
}
