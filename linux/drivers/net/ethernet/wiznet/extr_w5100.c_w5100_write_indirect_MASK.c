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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct w5100_mmio_priv {int /*<<< orphan*/  reg_lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  W5100_IDM_AR ; 
 int /*<<< orphan*/  W5100_IDM_DR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct w5100_mmio_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, u32 addr, u8 data)
{
	struct w5100_mmio_priv *mmio_priv = FUNC2(ndev);
	unsigned long flags;

	FUNC0(&mmio_priv->reg_lock, flags);
	FUNC3(ndev, W5100_IDM_AR, addr);
	FUNC4(ndev, W5100_IDM_DR, data);
	FUNC1(&mmio_priv->reg_lock, flags);

	return 0;
}