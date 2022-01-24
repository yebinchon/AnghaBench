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
struct mvneta_rx_queue {int /*<<< orphan*/  id; } ;
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int MVNETA_RXQ_ADD_NON_OCCUPIED_MAX ; 
 int MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mvneta_port *pp,
					  struct mvneta_rx_queue *rxq,
					  int ndescs)
{
	/* Only MVNETA_RXQ_ADD_NON_OCCUPIED_MAX (255) descriptors can
	 * be added at once
	 */
	while (ndescs > MVNETA_RXQ_ADD_NON_OCCUPIED_MAX) {
		FUNC1(pp, FUNC0(rxq->id),
			    (MVNETA_RXQ_ADD_NON_OCCUPIED_MAX <<
			     MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT));
		ndescs -= MVNETA_RXQ_ADD_NON_OCCUPIED_MAX;
	}

	FUNC1(pp, FUNC0(rxq->id),
		    (ndescs << MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT));
}