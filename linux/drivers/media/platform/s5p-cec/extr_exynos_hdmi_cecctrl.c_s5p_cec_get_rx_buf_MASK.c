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
typedef  size_t u32 ;
struct s5p_cec_dev {int /*<<< orphan*/  dev; scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ S5P_CEC_RX_BUFF0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

void FUNC3(struct s5p_cec_dev *cec, u32 size, u8 *buffer)
{
	u32 i = 0;
	char debug[40];

	while (i < size) {
		buffer[i] = FUNC1(cec->reg + S5P_CEC_RX_BUFF0 + (i * 4));
		FUNC2(debug + i * 2, "%02x ", buffer[i]);
		i++;
	}
	FUNC0(cec->dev, "cec-rx: cec size(%d): %s", size, debug);
}