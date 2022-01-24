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
typedef  int /*<<< orphan*/  u16 ;
struct ov7251 {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  OV7251_AEC_AGC_ADJ_0 ; 
 int FUNC0 (struct ov7251*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC1(struct ov7251 *ov7251, s32 gain)
{
	u16 reg;
	u8 val[2];

	reg = OV7251_AEC_AGC_ADJ_0;
	val[0] = (gain & 0x0300) >> 8; /* goes to OV7251_AEC_AGC_ADJ_0 */
	val[1] = gain & 0xff;          /* goes to OV7251_AEC_AGC_ADJ_1 */

	return FUNC0(ov7251, reg, val, 2);
}