
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct regulatory_request {int alpha2; } ;
struct lbs_private {int country_code; } ;


 scalar_t__ lbs_iface_active (struct lbs_private*) ;
 int lbs_set_11d_domain_info (struct lbs_private*) ;
 int memcpy (int ,int ,int) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void lbs_reg_notifier(struct wiphy *wiphy,
        struct regulatory_request *request)
{
 struct lbs_private *priv = wiphy_priv(wiphy);

 memcpy(priv->country_code, request->alpha2, sizeof(request->alpha2));
 if (lbs_iface_active(priv))
  lbs_set_11d_domain_info(priv);
}
