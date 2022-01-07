
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phylink_link_state {int dummy; } ;
struct phylink {int config; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* validate ) (int ,unsigned long*,struct phylink_link_state*) ;} ;


 int EINVAL ;
 scalar_t__ phylink_is_empty_linkmode (unsigned long*) ;
 int stub1 (int ,unsigned long*,struct phylink_link_state*) ;

__attribute__((used)) static int phylink_validate(struct phylink *pl, unsigned long *supported,
       struct phylink_link_state *state)
{
 pl->ops->validate(pl->config, supported, state);

 return phylink_is_empty_linkmode(supported) ? -EINVAL : 0;
}
