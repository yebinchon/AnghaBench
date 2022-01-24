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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_LE_STRUCT ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_MAC_ADDR ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_S16 ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_S32 ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_S64 ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_S8 ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_STRING ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_U16 ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_U32 ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_U64 ; 
 int /*<<< orphan*/  FM10K_TEST_MSG_U8 ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_le ; 
 int /*<<< orphan*/  test_mac ; 
 int /*<<< orphan*/  test_s16 ; 
 int /*<<< orphan*/  test_s32 ; 
 int /*<<< orphan*/  test_s64 ; 
 int /*<<< orphan*/  test_s8 ; 
 int /*<<< orphan*/  test_str ; 
 int /*<<< orphan*/  test_u16 ; 
 int /*<<< orphan*/  test_u32 ; 
 int /*<<< orphan*/  test_u64 ; 
 int /*<<< orphan*/  test_u8 ; 
 int /*<<< orphan*/  test_vlan ; 

__attribute__((used)) static void FUNC12(u32 *msg, u32 attr_flags)
{
	if (attr_flags & FUNC0(FM10K_TEST_MSG_STRING))
		FUNC3(msg, FM10K_TEST_MSG_STRING,
					       test_str);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_MAC_ADDR))
		FUNC2(msg, FM10K_TEST_MSG_MAC_ADDR,
					    test_mac, test_vlan);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_U8))
		FUNC11(msg, FM10K_TEST_MSG_U8,  test_u8);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_U16))
		FUNC8(msg, FM10K_TEST_MSG_U16, test_u16);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_U32))
		FUNC9(msg, FM10K_TEST_MSG_U32, test_u32);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_U64))
		FUNC10(msg, FM10K_TEST_MSG_U64, test_u64);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_S8))
		FUNC7(msg, FM10K_TEST_MSG_S8,  test_s8);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_S16))
		FUNC4(msg, FM10K_TEST_MSG_S16, test_s16);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_S32))
		FUNC5(msg, FM10K_TEST_MSG_S32, test_s32);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_S64))
		FUNC6(msg, FM10K_TEST_MSG_S64, test_s64);
	if (attr_flags & FUNC0(FM10K_TEST_MSG_LE_STRUCT))
		FUNC1(msg, FM10K_TEST_MSG_LE_STRUCT,
					     test_le, 8);
}