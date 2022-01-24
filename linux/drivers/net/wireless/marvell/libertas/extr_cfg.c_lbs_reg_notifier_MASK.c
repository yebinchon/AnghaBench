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
struct wiphy {int dummy; } ;
struct regulatory_request {int /*<<< orphan*/  alpha2; } ;
struct lbs_private {int /*<<< orphan*/  country_code; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lbs_private* FUNC3 (struct wiphy*) ; 

__attribute__((used)) static void FUNC4(struct wiphy *wiphy,
			     struct regulatory_request *request)
{
	struct lbs_private *priv = FUNC3(wiphy);

	FUNC2(priv->country_code, request->alpha2, sizeof(request->alpha2));
	if (FUNC0(priv))
		FUNC1(priv);
}