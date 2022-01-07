
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct at24_data {unsigned int byte_len; int lock; int wp_gpio; } ;


 int EINVAL ;
 struct device* at24_base_client_dev (struct at24_data*) ;
 int at24_regmap_write (struct at24_data*,char*,unsigned int,size_t) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int at24_write(void *priv, unsigned int off, void *val, size_t count)
{
 struct at24_data *at24;
 struct device *dev;
 char *buf = val;
 int ret;

 at24 = priv;
 dev = at24_base_client_dev(at24);

 if (unlikely(!count))
  return -EINVAL;

 if (off + count > at24->byte_len)
  return -EINVAL;

 ret = pm_runtime_get_sync(dev);
 if (ret < 0) {
  pm_runtime_put_noidle(dev);
  return ret;
 }





 mutex_lock(&at24->lock);
 gpiod_set_value_cansleep(at24->wp_gpio, 0);

 while (count) {
  ret = at24_regmap_write(at24, buf, off, count);
  if (ret < 0) {
   gpiod_set_value_cansleep(at24->wp_gpio, 1);
   mutex_unlock(&at24->lock);
   pm_runtime_put(dev);
   return ret;
  }
  buf += ret;
  off += ret;
  count -= ret;
 }

 gpiod_set_value_cansleep(at24->wp_gpio, 1);
 mutex_unlock(&at24->lock);

 pm_runtime_put(dev);

 return 0;
}
