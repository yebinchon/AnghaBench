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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RBCTL ; 
 int RB_FLUSH ; 
 int RTS5260_ADMA3_RST ; 
 int RTS5260_DMA_RST ; 
 int /*<<< orphan*/  RTS5260_DMA_RST_CTL_0 ; 
 int /*<<< orphan*/  RTSX_HCBCTLR ; 
 int /*<<< orphan*/  RTSX_HDBCTLR ; 
 int /*<<< orphan*/  STOP_CMD ; 
 int /*<<< orphan*/  STOP_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rtsx_pcr *pcr)
{
	FUNC1(pcr, RTSX_HCBCTLR, STOP_CMD);
	FUNC1(pcr, RTSX_HDBCTLR, STOP_DMA);
	FUNC0(pcr, RTS5260_DMA_RST_CTL_0,
				RTS5260_DMA_RST | RTS5260_ADMA3_RST,
				RTS5260_DMA_RST | RTS5260_ADMA3_RST);
	FUNC0(pcr, RBCTL, RB_FLUSH, RB_FLUSH);
}