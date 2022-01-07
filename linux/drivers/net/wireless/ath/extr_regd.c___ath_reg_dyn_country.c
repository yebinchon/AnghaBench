
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wiphy {int dummy; } ;
struct regulatory_request {scalar_t__ initiator; int alpha2; } ;
struct ath_regulatory {int current_rd; } ;


 int COUNTRY_ERD_FLAG ;
 int EINVAL ;
 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ;
 int __ath_regd_init (struct ath_regulatory*) ;
 int ath_is_world_regd (struct ath_regulatory*) ;
 int ath_reg_apply_world_flags (struct wiphy*,scalar_t__,struct ath_regulatory*) ;
 int ath_regd_find_country_by_name (int ) ;

__attribute__((used)) static int __ath_reg_dyn_country(struct wiphy *wiphy,
     struct ath_regulatory *reg,
     struct regulatory_request *request)
{
 u16 country_code;

 if (request->initiator == NL80211_REGDOM_SET_BY_COUNTRY_IE &&
     !ath_is_world_regd(reg))
  return -EINVAL;

 country_code = ath_regd_find_country_by_name(request->alpha2);
 if (country_code == (u16) -1)
  return -EINVAL;

 reg->current_rd = COUNTRY_ERD_FLAG;
 reg->current_rd |= country_code;

 __ath_regd_init(reg);

 ath_reg_apply_world_flags(wiphy, request->initiator, reg);

 return 0;
}
