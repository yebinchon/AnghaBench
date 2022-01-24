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
struct pcan_pccard {scalar_t__ fw_major; scalar_t__ fw_minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCC_FW_MAJOR ; 
 int /*<<< orphan*/  PCC_FW_MINOR ; 
 scalar_t__ FUNC0 (struct pcan_pccard*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct pcan_pccard *card)
{
	return ((FUNC0(card, PCC_FW_MAJOR) == card->fw_major) &&
		(FUNC0(card, PCC_FW_MINOR) == card->fw_minor));
}