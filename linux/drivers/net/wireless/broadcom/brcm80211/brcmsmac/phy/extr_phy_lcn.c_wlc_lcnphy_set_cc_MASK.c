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
typedef  int u16 ;
struct brcms_phy {int dummy; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  RADIO_2064_REG089 ; 
 int /*<<< orphan*/  RADIO_2064_REG08A ; 
 int /*<<< orphan*/  RADIO_2064_REG08B ; 
 int /*<<< orphan*/  RADIO_2064_REG08C ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct brcms_phy *pi, int cal_type, s16 coeff_x, s16 coeff_y)
{
	u16 di0dq0;
	u16 x, y, data_rf;
	int k;
	switch (cal_type) {
	case 0:
		FUNC1(pi, coeff_x, coeff_y);
		break;
	case 2:
		di0dq0 = (coeff_x & 0xff) << 8 | (coeff_y & 0xff);
		FUNC2(pi, di0dq0);
		break;
	case 3:
		k = FUNC0(coeff_x, 0);
		y = 8 + k;
		k = FUNC0(coeff_x, 1);
		x = 8 - k;
		data_rf = (x * 16 + y);
		FUNC3(pi, RADIO_2064_REG089, data_rf);
		k = FUNC0(coeff_y, 0);
		y = 8 + k;
		k = FUNC0(coeff_y, 1);
		x = 8 - k;
		data_rf = (x * 16 + y);
		FUNC3(pi, RADIO_2064_REG08A, data_rf);
		break;
	case 4:
		k = FUNC0(coeff_x, 0);
		y = 8 + k;
		k = FUNC0(coeff_x, 1);
		x = 8 - k;
		data_rf = (x * 16 + y);
		FUNC3(pi, RADIO_2064_REG08B, data_rf);
		k = FUNC0(coeff_y, 0);
		y = 8 + k;
		k = FUNC0(coeff_y, 1);
		x = 8 - k;
		data_rf = (x * 16 + y);
		FUNC3(pi, RADIO_2064_REG08C, data_rf);
		break;
	}
}