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
typedef  int /*<<< orphan*/  u32 ;
struct stimx274 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX274_DIGITAL_GAIN_REG ; 
 int IMX274_MASK_LSB_4_BITS ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct stimx274*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct stimx274 *priv, u32 dgain)
{
	u8 reg_val;

	reg_val = FUNC1(dgain);

	if (reg_val)
		reg_val--;

	reg_val = FUNC0(reg_val, (u8)0, (u8)3);

	return FUNC2(priv, IMX274_DIGITAL_GAIN_REG,
				reg_val & IMX274_MASK_LSB_4_BITS);
}