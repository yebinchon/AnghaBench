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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 

__attribute__((used)) static void FUNC24(u8 *ecc_buf)
{
	u32 tmp = ecc_buf[0] | (ecc_buf[1] << 16) |
		((ecc_buf[2] & 0xF0) << 20) | ((ecc_buf[2] & 0x0F) << 8);

	ecc_buf[0] = ~(FUNC21(tmp) | FUNC20(tmp) | FUNC15(tmp) | FUNC14(tmp) |
			FUNC5(tmp) | FUNC4(tmp) | FUNC23(tmp) | FUNC22(tmp));
	ecc_buf[1] = ~(FUNC1(tmp) | FUNC0(tmp) | FUNC19(tmp) | FUNC18(tmp) |
			FUNC11(tmp) | FUNC10(tmp) | FUNC3(tmp) | FUNC2(tmp));
	ecc_buf[2] = ~(FUNC17(tmp) | FUNC16(tmp) | FUNC13(tmp) | FUNC12(tmp) | FUNC7(tmp) |
			FUNC6(tmp) | FUNC9(tmp) | FUNC8(tmp));
}