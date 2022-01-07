
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3533_platform_data {int boost_ovp; int boost_freq; } ;
struct lm3533 {int dummy; } ;


 int lm3533_set_boost_freq (struct lm3533*,int ) ;
 int lm3533_set_boost_ovp (struct lm3533*,int ) ;

__attribute__((used)) static int lm3533_device_setup(struct lm3533 *lm3533,
     struct lm3533_platform_data *pdata)
{
 int ret;

 ret = lm3533_set_boost_freq(lm3533, pdata->boost_freq);
 if (ret)
  return ret;

 return lm3533_set_boost_ovp(lm3533, pdata->boost_ovp);
}
