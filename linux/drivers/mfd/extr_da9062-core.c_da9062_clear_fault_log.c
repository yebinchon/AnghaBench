
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9062 {int regmap; int dev; } ;


 int DA9062AA_FAULT_LOG ;
 int DA9062AA_KEY_RESET_MASK ;
 int DA9062AA_NSHUTDOWN_MASK ;
 int DA9062AA_POR_MASK ;
 int DA9062AA_TEMP_CRIT_MASK ;
 int DA9062AA_TWD_ERROR_MASK ;
 int DA9062AA_VDD_FAULT_MASK ;
 int DA9062AA_VDD_START_MASK ;
 int DA9062AA_WAIT_SHUT_MASK ;
 int dev_dbg (int ,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int da9062_clear_fault_log(struct da9062 *chip)
{
 int ret;
 int fault_log;

 ret = regmap_read(chip->regmap, DA9062AA_FAULT_LOG, &fault_log);
 if (ret < 0)
  return ret;

 if (fault_log) {
  if (fault_log & DA9062AA_TWD_ERROR_MASK)
   dev_dbg(chip->dev, "Fault log entry detected: TWD_ERROR\n");
  if (fault_log & DA9062AA_POR_MASK)
   dev_dbg(chip->dev, "Fault log entry detected: POR\n");
  if (fault_log & DA9062AA_VDD_FAULT_MASK)
   dev_dbg(chip->dev, "Fault log entry detected: VDD_FAULT\n");
  if (fault_log & DA9062AA_VDD_START_MASK)
   dev_dbg(chip->dev, "Fault log entry detected: VDD_START\n");
  if (fault_log & DA9062AA_TEMP_CRIT_MASK)
   dev_dbg(chip->dev, "Fault log entry detected: TEMP_CRIT\n");
  if (fault_log & DA9062AA_KEY_RESET_MASK)
   dev_dbg(chip->dev, "Fault log entry detected: KEY_RESET\n");
  if (fault_log & DA9062AA_NSHUTDOWN_MASK)
   dev_dbg(chip->dev, "Fault log entry detected: NSHUTDOWN\n");
  if (fault_log & DA9062AA_WAIT_SHUT_MASK)
   dev_dbg(chip->dev, "Fault log entry detected: WAIT_SHUT\n");

  ret = regmap_write(chip->regmap, DA9062AA_FAULT_LOG,
       fault_log);
 }

 return ret;
}
