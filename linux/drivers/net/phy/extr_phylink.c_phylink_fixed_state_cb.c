
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {scalar_t__ link_an_mode; void (* get_fixed_state ) (struct net_device*,struct phylink_link_state*) ;int state_mutex; } ;


 int EINVAL ;
 scalar_t__ MLO_AN_FIXED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int phylink_fixed_state_cb(struct phylink *pl,
      void (*cb)(struct net_device *dev,
          struct phylink_link_state *state))
{



 if (pl->link_an_mode != MLO_AN_FIXED)
  return -EINVAL;

 mutex_lock(&pl->state_mutex);
 pl->get_fixed_state = cb;
 mutex_unlock(&pl->state_mutex);

 return 0;
}
