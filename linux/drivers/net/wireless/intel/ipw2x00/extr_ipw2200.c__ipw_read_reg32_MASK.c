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
typedef  struct ipw_priv* u32 ;
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ipw_priv*,struct ipw_priv*) ; 
 int /*<<< orphan*/  IPW_INDIRECT_ADDR ; 
 int /*<<< orphan*/  IPW_INDIRECT_DATA ; 
 struct ipw_priv* FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ,struct ipw_priv*) ; 

__attribute__((used)) static u32 FUNC3(struct ipw_priv *priv, u32 reg)
{
	u32 value;

	FUNC0("%p : reg = 0x%08x\n", priv, reg);

	FUNC2(priv, IPW_INDIRECT_ADDR, reg);
	value = FUNC1(priv, IPW_INDIRECT_DATA);
	FUNC0(" reg = 0x%4X : value = 0x%4x\n", reg, value);
	return value;
}