
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink_link_state {int dummy; } ;
struct phylink_config {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int stmmac_mac_link_state(struct phylink_config *config,
     struct phylink_link_state *state)
{
 return -EOPNOTSUPP;
}
