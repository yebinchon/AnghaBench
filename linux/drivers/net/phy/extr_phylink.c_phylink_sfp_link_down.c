
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int dummy; } ;


 int ASSERT_RTNL () ;
 int PHYLINK_DISABLE_LINK ;
 int phylink_run_resolve_and_disable (struct phylink*,int ) ;

__attribute__((used)) static void phylink_sfp_link_down(void *upstream)
{
 struct phylink *pl = upstream;

 ASSERT_RTNL();

 phylink_run_resolve_and_disable(pl, PHYLINK_DISABLE_LINK);
}
