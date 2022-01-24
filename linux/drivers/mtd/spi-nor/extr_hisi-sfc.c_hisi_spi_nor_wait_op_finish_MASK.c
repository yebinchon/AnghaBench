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
struct hifmc_host {scalar_t__ regbase; } ;

/* Variables and functions */
 scalar_t__ FMC_INT ; 
 int FMC_INT_OP_DONE ; 
 int /*<<< orphan*/  FMC_WAIT_TIMEOUT ; 
 int FUNC0 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct hifmc_host *host)
{
	u32 reg;

	return FUNC0(host->regbase + FMC_INT, reg,
		(reg & FMC_INT_OP_DONE), 0, FMC_WAIT_TIMEOUT);
}