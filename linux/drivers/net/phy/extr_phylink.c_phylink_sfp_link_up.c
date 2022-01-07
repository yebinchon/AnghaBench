
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int phylink_disable_state; } ;


 int ASSERT_RTNL () ;
 int PHYLINK_DISABLE_LINK ;
 int clear_bit (int ,int *) ;
 int phylink_run_resolve (struct phylink*) ;

__attribute__((used)) static void phylink_sfp_link_up(void *upstream)
{
 struct phylink *pl = upstream;

 ASSERT_RTNL();

 clear_bit(PHYLINK_DISABLE_LINK, &pl->phylink_disable_state);
 phylink_run_resolve(pl);
}
