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
struct ravb_private {int addr; } ;
struct net_device {int dummy; } ;
typedef  enum ravb_reg { ____Placeholder_ravb_reg } ravb_reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ravb_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static inline u32 FUNC2(struct net_device *ndev, enum ravb_reg reg)
{
	struct ravb_private *priv = FUNC1(ndev);

	return FUNC0(priv->addr + reg);
}