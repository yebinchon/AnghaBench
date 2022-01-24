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
typedef  scalar_t__ u32 ;
struct unimac_mdio_priv {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CPU_BIG_ENDIAN ; 
 int /*<<< orphan*/  CONFIG_MIPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct unimac_mdio_priv *priv, u32 val,
				      u32 offset)
{
	if (FUNC0(CONFIG_MIPS) && FUNC0(CONFIG_CPU_BIG_ENDIAN))
		FUNC1(val, priv->base + offset);
	else
		FUNC2(val, priv->base + offset);
}