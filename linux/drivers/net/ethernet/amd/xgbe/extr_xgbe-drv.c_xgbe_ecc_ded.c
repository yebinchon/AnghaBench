
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 unsigned long HZ ;
 unsigned long ecc_ded_period ;
 unsigned int ecc_ded_threshold ;
 unsigned long jiffies ;
 int netdev_alert (int ,char*,char const*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static bool xgbe_ecc_ded(struct xgbe_prv_data *pdata, unsigned long *period,
    unsigned int *count, const char *area)
{
 if (time_before(jiffies, *period)) {
  (*count)++;
 } else {
  *period = jiffies + (ecc_ded_period * HZ);
  *count = 1;
 }

 if (*count > ecc_ded_threshold) {
  netdev_alert(pdata->netdev,
        "%s ECC detected errors exceed threshold\n",
        area);
  return 1;
 }

 return 0;
}
