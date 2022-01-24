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
typedef  int /*<<< orphan*/  u64 ;
struct cvm_mmc_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cvm_mmc_host*) ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct cvm_mmc_host *host, u64 val)
{
	FUNC2(val, host->base + FUNC0(host));
	FUNC2(val, host->base + FUNC1(host));
}