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
typedef  int u8 ;
struct cc770_priv {scalar_t__ reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  cc770_isa_port_lock ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(const struct cc770_priv *priv,
						int reg, u8 val)
{
	unsigned long base = (unsigned long)priv->reg_base;
	unsigned long flags;

	FUNC1(&cc770_isa_port_lock, flags);
	FUNC0(reg, base);
	FUNC0(val, base + 1);
	FUNC2(&cc770_isa_port_lock, flags);
}