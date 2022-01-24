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
struct macsec_rx_sc {int /*<<< orphan*/ * sa; } ;
struct macsec_rx_sa {int dummy; } ;

/* Variables and functions */
 int MACSEC_NUM_AN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct macsec_rx_sa*) ; 
 int /*<<< orphan*/  FUNC2 (struct macsec_rx_sc*) ; 
 struct macsec_rx_sa* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct macsec_rx_sc *rx_sc)
{
	int i;

	for (i = 0; i < MACSEC_NUM_AN; i++) {
		struct macsec_rx_sa *sa = FUNC3(rx_sc->sa[i]);

		FUNC0(rx_sc->sa[i], NULL);
		if (sa)
			FUNC1(sa);
	}

	FUNC2(rx_sc);
}