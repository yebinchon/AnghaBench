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
struct tc_cls_u32_offload {int command; } ;
struct stmmac_priv {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_CLSU32_DELETE_KNODE 130 
#define  TC_CLSU32_NEW_KNODE 129 
#define  TC_CLSU32_REPLACE_KNODE 128 
 int FUNC0 (struct stmmac_priv*,struct tc_cls_u32_offload*) ; 
 int FUNC1 (struct stmmac_priv*,struct tc_cls_u32_offload*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*,struct tc_cls_u32_offload*) ; 

__attribute__((used)) static int FUNC3(struct stmmac_priv *priv,
			    struct tc_cls_u32_offload *cls)
{
	switch (cls->command) {
	case TC_CLSU32_REPLACE_KNODE:
		FUNC2(priv, cls);
		/* Fall through */
	case TC_CLSU32_NEW_KNODE:
		return FUNC0(priv, cls);
	case TC_CLSU32_DELETE_KNODE:
		return FUNC1(priv, cls);
	default:
		return -EOPNOTSUPP;
	}
}