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
struct w5300_priv {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  W5300_IDM_AR ; 
 int /*<<< orphan*/  W5300_IDM_DR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct w5300_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct w5300_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC4(struct w5300_priv *priv, u16 addr)
{
	unsigned long flags;
	u16 data;

	FUNC0(&priv->reg_lock, flags);
	FUNC3(priv, W5300_IDM_AR, addr);
	data = FUNC2(priv, W5300_IDM_DR);
	FUNC1(&priv->reg_lock, flags);

	return data;
}