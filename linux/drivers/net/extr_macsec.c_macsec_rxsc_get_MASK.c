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
struct macsec_rx_sc {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct macsec_rx_sc *FUNC1(struct macsec_rx_sc *sc)
{
	return FUNC0(&sc->refcnt) ? sc : NULL;
}