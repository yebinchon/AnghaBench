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
struct mxcmci_host {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC_MPC512x ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC3(struct mxcmci_host *host, int reg)
{
	if (FUNC0(CONFIG_PPC_MPC512x))
		return FUNC1(host->base + reg);
	else
		return FUNC2(host->base + reg);
}