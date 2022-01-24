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
typedef  int /*<<< orphan*/  u32 ;
struct ar5523_cmd_rx_filter {void* op; void* bits; } ;
struct ar5523 {int dummy; } ;
typedef  int /*<<< orphan*/  rxfilter ;

/* Variables and functions */
 int /*<<< orphan*/  WDCMSG_RX_FILTER ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,struct ar5523_cmd_rx_filter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ar5523 *ar, u32 bits, u32 op)
{
	struct ar5523_cmd_rx_filter rxfilter;

	rxfilter.bits = FUNC2(bits);
	rxfilter.op = FUNC2(op);

	FUNC1(ar, "setting Rx filter=0x%x flags=0x%x\n", bits, op);
	return FUNC0(ar, WDCMSG_RX_FILTER, &rxfilter,
				 sizeof(rxfilter), 0);
}