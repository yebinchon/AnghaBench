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
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AVE_PFEN ; 
 unsigned int AVE_PF_SIZE ; 
 int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 struct ave_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, unsigned int entry)
{
	struct ave_private *priv = FUNC2(ndev);
	u32 val;

	if (FUNC1(entry > AVE_PF_SIZE))
		return -EINVAL;

	val = FUNC3(priv->base + AVE_PFEN);
	FUNC4(val | FUNC0(entry), priv->base + AVE_PFEN);

	return 0;
}