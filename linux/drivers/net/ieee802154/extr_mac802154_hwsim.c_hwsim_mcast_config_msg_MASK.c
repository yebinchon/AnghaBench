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
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWSIM_MCGRP_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwsim_genl_family ; 

__attribute__((used)) static void FUNC2(struct sk_buff *mcast_skb,
				   struct genl_info *info)
{
	if (info)
		FUNC0(&hwsim_genl_family, mcast_skb, info,
			    HWSIM_MCGRP_CONFIG, GFP_KERNEL);
	else
		FUNC1(&hwsim_genl_family, mcast_skb, 0,
				  HWSIM_MCGRP_CONFIG, GFP_KERNEL);
}