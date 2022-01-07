
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENODEV ;
 struct device* ERR_PTR (int ) ;

__attribute__((used)) static struct device *cros_ec_cec_find_hdmi_dev(struct device *dev,
      const char **conn)
{
 return ERR_PTR(-ENODEV);
}
