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
struct bcm_sysport_priv {int /*<<< orphan*/  is_lite; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTRL2_CPU_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_sysport_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sysport_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sysport_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_sysport_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct bcm_sysport_priv *priv)
{
	FUNC0(priv, 0xffffffff);
	FUNC1(priv, 0xffffffff, INTRL2_CPU_CLEAR);
	if (!priv->is_lite) {
		FUNC2(priv, 0xffffffff);
		FUNC3(priv, 0xffffffff, INTRL2_CPU_CLEAR);
	}
}