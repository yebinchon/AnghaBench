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

/* Variables and functions */
 scalar_t__ BUF_SIZE_16KiB ; 
 scalar_t__ DEFAULT_BUFSIZE ; 
 int FLOW_AUTO ; 
 int FLOW_OFF ; 
 int PAUSE_TIME ; 
 scalar_t__ STMMAC_DEFAULT_LPI_TIMER ; 
 scalar_t__ TX_TIMEO ; 
 scalar_t__ buf_sz ; 
 scalar_t__ eee_timer ; 
 int flow_ctrl ; 
 scalar_t__ FUNC0 (int) ; 
 int pause ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ watchdog ; 

__attribute__((used)) static void FUNC2(void)
{
	if (FUNC1(watchdog < 0))
		watchdog = TX_TIMEO;
	if (FUNC1((buf_sz < DEFAULT_BUFSIZE) || (buf_sz > BUF_SIZE_16KiB)))
		buf_sz = DEFAULT_BUFSIZE;
	if (FUNC1(flow_ctrl > 1))
		flow_ctrl = FLOW_AUTO;
	else if (FUNC0(flow_ctrl < 0))
		flow_ctrl = FLOW_OFF;
	if (FUNC1((pause < 0) || (pause > 0xffff)))
		pause = PAUSE_TIME;
	if (eee_timer < 0)
		eee_timer = STMMAC_DEFAULT_LPI_TIMER;
}