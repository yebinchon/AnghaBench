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
struct wcn36xx {scalar_t__ ccu_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_DBG_DXE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct wcn36xx *wcn, int addr, int data)
{
	FUNC0(WCN36XX_DBG_DXE,
		    "wcn36xx_ccu_write_register: addr=%x, data=%x\n",
		    addr, data);

	FUNC1(data, wcn->ccu_base + addr);
}