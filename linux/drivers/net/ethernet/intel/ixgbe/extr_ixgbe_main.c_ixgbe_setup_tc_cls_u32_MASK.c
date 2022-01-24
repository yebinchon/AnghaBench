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
struct ixgbe_adapter {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_CLSU32_DELETE_HNODE 133 
#define  TC_CLSU32_DELETE_KNODE 132 
#define  TC_CLSU32_NEW_HNODE 131 
#define  TC_CLSU32_NEW_KNODE 130 
#define  TC_CLSU32_REPLACE_HNODE 129 
#define  TC_CLSU32_REPLACE_KNODE 128 
 int FUNC0 (struct ixgbe_adapter*,struct tc_cls_u32_offload*) ; 
 int FUNC1 (struct ixgbe_adapter*,struct tc_cls_u32_offload*) ; 
 int FUNC2 (struct ixgbe_adapter*,struct tc_cls_u32_offload*) ; 
 int FUNC3 (struct ixgbe_adapter*,struct tc_cls_u32_offload*) ; 

__attribute__((used)) static int FUNC4(struct ixgbe_adapter *adapter,
				  struct tc_cls_u32_offload *cls_u32)
{
	switch (cls_u32->command) {
	case TC_CLSU32_NEW_KNODE:
	case TC_CLSU32_REPLACE_KNODE:
		return FUNC0(adapter, cls_u32);
	case TC_CLSU32_DELETE_KNODE:
		return FUNC3(adapter, cls_u32);
	case TC_CLSU32_NEW_HNODE:
	case TC_CLSU32_REPLACE_HNODE:
		return FUNC1(adapter, cls_u32);
	case TC_CLSU32_DELETE_HNODE:
		return FUNC2(adapter, cls_u32);
	default:
		return -EOPNOTSUPP;
	}
}