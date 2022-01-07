
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int filter_flags; } ;
struct il_priv {int mutex; TYPE_1__ staging; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int D_INFO (char*,scalar_t__) ;
 int IL_WARN (char*) ;
 int cpu_to_le32 (scalar_t__) ;
 struct il_priv* dev_get_drvdata (struct device*) ;
 int il3945_commit_rxon (struct il_priv*) ;
 scalar_t__ il_scan_cancel_timeout (struct il_priv*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t
il3945_store_filter_flags(struct device *d, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct il_priv *il = dev_get_drvdata(d);
 u32 filter_flags = simple_strtoul(buf, ((void*)0), 0);

 mutex_lock(&il->mutex);
 if (le32_to_cpu(il->staging.filter_flags) != filter_flags) {

  if (il_scan_cancel_timeout(il, 100))
   IL_WARN("Could not cancel scan.\n");
  else {
   D_INFO("Committing rxon.filter_flags = " "0x%04X\n",
          filter_flags);
   il->staging.filter_flags = cpu_to_le32(filter_flags);
   il3945_commit_rxon(il);
  }
 }
 mutex_unlock(&il->mutex);

 return count;
}
