
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_device {int current_timings; } ;


 int def_mode ;
 int vpbe_get_std_info_by_name (struct vpbe_device*,int ) ;
 int vpbe_set_mode (struct vpbe_device*,int *) ;

__attribute__((used)) static int vpbe_set_default_mode(struct vpbe_device *vpbe_dev)
{
 int ret;

 ret = vpbe_get_std_info_by_name(vpbe_dev, def_mode);
 if (ret)
  return ret;


 return vpbe_set_mode(vpbe_dev, &vpbe_dev->current_timings);
}
