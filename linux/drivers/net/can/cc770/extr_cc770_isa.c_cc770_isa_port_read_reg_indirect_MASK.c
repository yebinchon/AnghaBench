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
struct cc770_priv {scalar_t__ reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  cc770_isa_port_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u8 FUNC4(const struct cc770_priv *priv,
					     int reg)
{
	unsigned long base = (unsigned long)priv->reg_base;
	unsigned long flags;
	u8 val;

	FUNC2(&cc770_isa_port_lock, flags);
	FUNC1(reg, base);
	val = FUNC0(base + 1);
	FUNC3(&cc770_isa_port_lock, flags);

	return val;
}