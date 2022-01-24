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
struct xge_pdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_CONFIG_1 ; 
 int RX_EN ; 
 int TX_EN ; 
 int FUNC0 (struct xge_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xge_pdata*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct xge_pdata *pdata)
{
	u32 data;

	data = FUNC0(pdata, MAC_CONFIG_1);
	data &= ~(TX_EN | RX_EN);
	FUNC1(pdata, MAC_CONFIG_1, data);
}