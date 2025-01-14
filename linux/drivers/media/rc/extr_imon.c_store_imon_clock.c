
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imon_context {int lock; scalar_t__ display_isopen; int display_supported; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t ENODEV ;
 struct imon_context* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t send_set_imon_clock (struct imon_context*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static ssize_t store_imon_clock(struct device *d,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct imon_context *ictx = dev_get_drvdata(d);
 ssize_t retval;
 unsigned int year, month, day, dow, hour, minute, second;

 if (!ictx)
  return -ENODEV;

 mutex_lock(&ictx->lock);

 if (!ictx->display_supported) {
  retval = -ENODEV;
  goto exit;
 } else if (ictx->display_isopen) {
  retval = -EBUSY;
  goto exit;
 }

 if (sscanf(buf, "%u %u %u %u %u %u %u", &year, &month, &day, &dow,
     &hour, &minute, &second) != 7) {
  retval = -EINVAL;
  goto exit;
 }

 if ((month < 1 || month > 12) ||
     (day < 1 || day > 31) || (dow > 6) ||
     (hour > 23) || (minute > 59) || (second > 59)) {
  retval = -EINVAL;
  goto exit;
 }

 retval = send_set_imon_clock(ictx, year, month, day, dow,
         hour, minute, second);
 if (retval)
  goto exit;

 retval = count;
exit:
 mutex_unlock(&ictx->lock);

 return retval;
}
