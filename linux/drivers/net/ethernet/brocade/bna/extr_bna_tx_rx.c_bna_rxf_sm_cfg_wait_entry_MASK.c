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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bna_rxf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bna_rxf*) ; 
 int /*<<< orphan*/  bna_rxf_sm_started ; 

__attribute__((used)) static void
FUNC2(struct bna_rxf *rxf)
{
	if (!FUNC1(rxf)) {
		/* No more pending config updates */
		FUNC0(rxf, bna_rxf_sm_started);
	}
}