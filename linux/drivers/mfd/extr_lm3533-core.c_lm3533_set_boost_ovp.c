
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3533 {int dev; } ;
typedef enum lm3533_boost_ovp { ____Placeholder_lm3533_boost_ovp } lm3533_boost_ovp ;


 int LM3533_BOOST_OVP_MASK ;
 int LM3533_BOOST_OVP_SHIFT ;
 int LM3533_REG_BOOST_PWM ;
 int dev_err (int ,char*) ;
 int lm3533_update (struct lm3533*,int ,int,int ) ;

__attribute__((used)) static int lm3533_set_boost_ovp(struct lm3533 *lm3533,
      enum lm3533_boost_ovp ovp)
{
 int ret;

 ret = lm3533_update(lm3533, LM3533_REG_BOOST_PWM,
     ovp << LM3533_BOOST_OVP_SHIFT,
     LM3533_BOOST_OVP_MASK);
 if (ret)
  dev_err(lm3533->dev, "failed to set boost ovp\n");

 return ret;
}
