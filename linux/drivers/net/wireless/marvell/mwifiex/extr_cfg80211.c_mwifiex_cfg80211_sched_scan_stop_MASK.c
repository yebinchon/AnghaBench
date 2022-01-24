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
typedef  int /*<<< orphan*/  u64 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int dummy; } ;

/* Variables and functions */
 struct mwifiex_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,char*) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy,
					    struct net_device *dev, u64 reqid)
{
	struct mwifiex_private *priv = FUNC0(dev);

	FUNC2(wiphy, "sched scan stop!");
	FUNC1(priv);

	return 0;
}