
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3533 {int dev; } ;
typedef enum lm3533_boost_freq { ____Placeholder_lm3533_boost_freq } lm3533_boost_freq ;


 int LM3533_BOOST_FREQ_MASK ;
 int LM3533_BOOST_FREQ_SHIFT ;
 int LM3533_REG_BOOST_PWM ;
 int dev_err (int ,char*) ;
 int lm3533_update (struct lm3533*,int ,int,int ) ;

__attribute__((used)) static int lm3533_set_boost_freq(struct lm3533 *lm3533,
      enum lm3533_boost_freq freq)
{
 int ret;

 ret = lm3533_update(lm3533, LM3533_REG_BOOST_PWM,
     freq << LM3533_BOOST_FREQ_SHIFT,
     LM3533_BOOST_FREQ_MASK);
 if (ret)
  dev_err(lm3533->dev, "failed to set boost frequency\n");

 return ret;
}
