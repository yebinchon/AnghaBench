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
struct wbsd_host {scalar_t__ config; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC1(struct wbsd_host *host)
{
	if (host->base)
		FUNC0(host->base, 8);

	host->base = 0;

	if (host->config)
		FUNC0(host->config, 2);

	host->config = 0;
}