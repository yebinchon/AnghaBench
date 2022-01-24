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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  NFP_CPP_TARGET_ARM 136 
#define  NFP_CPP_TARGET_CLS 135 
#define  NFP_CPP_TARGET_CRYPTO 134 
#define  NFP_CPP_TARGET_CT_XPB 133 
#define  NFP_CPP_TARGET_ILA 132 
#define  NFP_CPP_TARGET_MU 131 
#define  NFP_CPP_TARGET_NBI 130 
#define  NFP_CPP_TARGET_PCIE 129 
#define  NFP_CPP_TARGET_QDR 128 
 int /*<<< orphan*/  P32 ; 
 int /*<<< orphan*/  P64 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC9(u32 cpp_id, u64 address)
{
	switch (FUNC0(cpp_id)) {
	case NFP_CPP_TARGET_NBI:
		return FUNC6(cpp_id, address);
	case NFP_CPP_TARGET_QDR:
		return FUNC8(cpp_id, P32, 24, 4);
	case NFP_CPP_TARGET_ILA:
		return FUNC4(cpp_id);
	case NFP_CPP_TARGET_MU:
		return FUNC5(cpp_id, address);
	case NFP_CPP_TARGET_PCIE:
		return FUNC7(cpp_id);
	case NFP_CPP_TARGET_ARM:
		if (address < 0x10000)
			return FUNC8(cpp_id, P64, 1, 1);
		else
			return FUNC8(cpp_id, P32, 1, 1);
	case NFP_CPP_TARGET_CRYPTO:
		return FUNC3(cpp_id);
	case NFP_CPP_TARGET_CT_XPB:
		return FUNC1(cpp_id);
	case NFP_CPP_TARGET_CLS:
		return FUNC2(cpp_id);
	case 0:
		return FUNC8(cpp_id, P32, 4, 4);
	default:
		return -EINVAL;
	}
}