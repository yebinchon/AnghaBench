
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* mcdi; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int fn_flags; } ;


 int MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_LINKCTRL ;
 struct efx_nic* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t efx_ef10_show_link_control_flag(struct device *dev,
            struct device_attribute *attr,
            char *buf)
{
 struct efx_nic *efx = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n",
         ((efx->mcdi->fn_flags) &
   (1 << MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_LINKCTRL))
         ? 1 : 0);
}
