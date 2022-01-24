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
struct bna_rxf {int dummy; } ;
struct bfi_msgq_mhdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXF_E_FW_RESP ; 
 int /*<<< orphan*/  FUNC0 (struct bna_rxf*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct bna_rxf *rxf, struct bfi_msgq_mhdr *msghdr)
{
	FUNC0(rxf, RXF_E_FW_RESP);
}