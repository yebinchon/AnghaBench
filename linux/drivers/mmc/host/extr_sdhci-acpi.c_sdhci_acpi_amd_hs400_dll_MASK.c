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
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_AMD_RESET_DLL_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host)
{
	/* AMD Platform requires dll setting */
	FUNC0(host, 0x40003210, SDHCI_AMD_RESET_DLL_REGISTER);
	FUNC1(10, 20);
	FUNC0(host, 0x40033210, SDHCI_AMD_RESET_DLL_REGISTER);
}