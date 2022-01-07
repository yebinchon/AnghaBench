
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_enc_mode_info {int dummy; } ;
struct vpbe_device {struct vpbe_enc_mode_info current_timings; } ;


 int EINVAL ;

__attribute__((used)) static int vpbe_get_current_mode_info(struct vpbe_device *vpbe_dev,
          struct vpbe_enc_mode_info *mode_info)
{
 if (!mode_info)
  return -EINVAL;

 *mode_info = vpbe_dev->current_timings;

 return 0;
}
