
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int EINVAL ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char const*,char*,int ) ;
 int uvc_clock_param ;

__attribute__((used)) static int uvc_clock_param_set(const char *val, const struct kernel_param *kp)
{
 if (strncasecmp(val, "clock_", strlen("clock_")) == 0)
  val += strlen("clock_");

 if (strcasecmp(val, "monotonic") == 0)
  uvc_clock_param = CLOCK_MONOTONIC;
 else if (strcasecmp(val, "realtime") == 0)
  uvc_clock_param = CLOCK_REALTIME;
 else
  return -EINVAL;

 return 0;
}
