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
typedef  int uint16_t ;
struct mxc_nand_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_STATUS ; 
 int /*<<< orphan*/  NFC_V3_CONFIG1 ; 
 int /*<<< orphan*/  NFC_V3_LAUNCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mxc_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC3(struct mxc_nand_host *host)
{
	FUNC2(NFC_STATUS, NFC_V3_LAUNCH);
	FUNC1(host, true);

	return FUNC0(NFC_V3_CONFIG1) >> 16;
}