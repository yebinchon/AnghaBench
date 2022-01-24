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
struct usdhi6_host {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  USDHI6_WAIT_FOR_DATA_END ; 
 int FUNC0 (struct usdhi6_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct usdhi6_host*,int) ; 

__attribute__((used)) static bool FUNC2(struct usdhi6_host *host)
{
	int ret = FUNC0(host);

	/* See comment in usdhi6_read_block() */
	FUNC1(host, true);

	if (ret < 0)
		return false;

	host->wait = USDHI6_WAIT_FOR_DATA_END;
	return true;
}