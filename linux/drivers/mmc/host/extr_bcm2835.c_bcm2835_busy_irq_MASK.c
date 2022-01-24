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
struct bcm2835_host {int use_busy; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_host*) ; 

__attribute__((used)) static void FUNC3(struct bcm2835_host *host)
{
	if (FUNC0(!host->cmd)) {
		FUNC1(host);
		return;
	}

	if (FUNC0(!host->use_busy)) {
		FUNC1(host);
		return;
	}
	host->use_busy = false;

	FUNC2(host);
}