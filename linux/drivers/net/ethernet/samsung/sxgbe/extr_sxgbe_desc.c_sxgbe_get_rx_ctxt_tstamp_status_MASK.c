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
struct sxgbe_rx_ctxt_desc {int tstamp_hi; int tstamp_lo; int tstamp_available; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(struct sxgbe_rx_ctxt_desc *p)
{
	if ((p->tstamp_hi == 0xffffffff) && (p->tstamp_lo == 0xffffffff)) {
		FUNC0("Time stamp corrupted\n");
		return 0;
	}

	return p->tstamp_available;
}