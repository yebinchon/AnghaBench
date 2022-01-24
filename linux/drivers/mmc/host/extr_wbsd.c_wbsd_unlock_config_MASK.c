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
struct wbsd_host {scalar_t__ config; int /*<<< orphan*/  unlock_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct wbsd_host *host)
{
	FUNC0(host->config == 0);

	FUNC1(host->unlock_code, host->config);
	FUNC1(host->unlock_code, host->config);
}