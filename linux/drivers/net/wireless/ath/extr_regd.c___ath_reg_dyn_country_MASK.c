#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct regulatory_request {scalar_t__ initiator; int /*<<< orphan*/  alpha2; } ;
struct ath_regulatory {int /*<<< orphan*/  current_rd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTRY_ERD_FLAG ; 
 int EINVAL ; 
 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_regulatory*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_regulatory*) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,scalar_t__,struct ath_regulatory*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy,
				 struct ath_regulatory *reg,
				 struct regulatory_request *request)
{
	u16 country_code;

	if (request->initiator == NL80211_REGDOM_SET_BY_COUNTRY_IE &&
	    !FUNC1(reg))
		return -EINVAL;

	country_code = FUNC3(request->alpha2);
	if (country_code == (u16) -1)
		return -EINVAL;

	reg->current_rd = COUNTRY_ERD_FLAG;
	reg->current_rd |= country_code;

	FUNC0(reg);

	FUNC2(wiphy, request->initiator, reg);

	return 0;
}