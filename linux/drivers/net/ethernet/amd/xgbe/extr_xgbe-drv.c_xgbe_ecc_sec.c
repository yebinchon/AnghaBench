
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dev; } ;


 unsigned long HZ ;
 int dev_warn_once (int ,char*,char const*) ;
 unsigned int ecc_sec_info_threshold ;
 unsigned long ecc_sec_period ;
 unsigned int ecc_sec_warn_threshold ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static bool xgbe_ecc_sec(struct xgbe_prv_data *pdata, unsigned long *period,
    unsigned int *count, const char *area)
{
 if (time_before(jiffies, *period)) {
  (*count)++;
 } else {
  *period = jiffies + (ecc_sec_period * HZ);
  *count = 1;
 }

 if (*count > ecc_sec_info_threshold)
  dev_warn_once(pdata->dev,
         "%s ECC corrected errors exceed informational threshold\n",
         area);

 if (*count > ecc_sec_warn_threshold) {
  dev_warn_once(pdata->dev,
         "%s ECC corrected errors exceed warning threshold\n",
         area);
  return 1;
 }

 return 0;
}
