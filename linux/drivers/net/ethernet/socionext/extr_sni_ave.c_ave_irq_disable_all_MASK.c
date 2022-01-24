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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AVE_GIMR ; 
 struct ave_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *ndev)
{
	struct ave_private *priv = FUNC0(ndev);
	u32 ret;

	ret = FUNC1(priv->base + AVE_GIMR);
	FUNC2(0, priv->base + AVE_GIMR);

	return ret;
}