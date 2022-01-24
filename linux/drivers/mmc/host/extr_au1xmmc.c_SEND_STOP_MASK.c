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
struct au1xmmc_host {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*) ; 
 scalar_t__ HOST_S_DATA ; 
 scalar_t__ HOST_S_STOP ; 
 int SD_CONFIG2_DF ; 
 int STOP_CMD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static inline void FUNC6(struct au1xmmc_host *host)
{
	u32 config2;

	FUNC2(host->status != HOST_S_DATA);
	host->status = HOST_S_STOP;

	config2 = FUNC3(FUNC1(host));
	FUNC4(config2 | SD_CONFIG2_DF, FUNC1(host));
	FUNC5(); /* drain writebuffer */

	/* Send the stop command */
	FUNC4(STOP_CMD, FUNC0(host));
	FUNC5(); /* drain writebuffer */
}