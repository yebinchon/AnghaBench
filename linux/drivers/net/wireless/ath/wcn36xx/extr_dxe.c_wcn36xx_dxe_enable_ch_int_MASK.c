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
struct wcn36xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_DXE_INT_MASK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct wcn36xx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct wcn36xx *wcn, u16 wcn_ch)
{
	int reg_data = 0;

	FUNC0(wcn,
				  WCN36XX_DXE_INT_MASK_REG,
				  &reg_data);

	reg_data |= wcn_ch;

	FUNC1(wcn,
				   WCN36XX_DXE_INT_MASK_REG,
				   (int)reg_data);
	return 0;
}