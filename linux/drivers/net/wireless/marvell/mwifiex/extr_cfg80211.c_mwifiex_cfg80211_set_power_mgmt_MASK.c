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
typedef  int u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mwifiex_private*,int*) ; 
 struct mwifiex_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct wiphy *wiphy,
				struct net_device *dev,
				bool enabled, int timeout)
{
	struct mwifiex_private *priv = FUNC2(dev);
	u32 ps_mode;

	if (timeout)
		FUNC0(priv->adapter, INFO,
			    "info: ignore timeout value for IEEE Power Save\n");

	ps_mode = enabled;

	return FUNC1(priv, &ps_mode);
}