
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ device_property_present (struct device*,char*) ;
 scalar_t__ machine_is (int ) ;
 int mpc837x_mds ;
 int mpc837x_rdb ;

__attribute__((used)) static bool sdhci_wp_inverted(struct device *dev)
{
 if (device_property_present(dev, "sdhci,wp-inverted") ||
     device_property_present(dev, "wp-inverted"))
  return 1;





 return 0;

}
