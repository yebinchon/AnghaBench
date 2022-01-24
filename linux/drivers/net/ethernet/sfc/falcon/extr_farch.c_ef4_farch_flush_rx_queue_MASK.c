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
struct ef4_rx_queue {struct ef4_nic* efx; } ;
struct ef4_nic {int dummy; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRF_AZ_RX_FLUSH_DESCQ ; 
 int /*<<< orphan*/  FRF_AZ_RX_FLUSH_DESCQ_CMD ; 
 int /*<<< orphan*/  FR_AZ_RX_FLUSH_DESCQ ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_rx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ef4_rx_queue *rx_queue)
{
	struct ef4_nic *efx = rx_queue->efx;
	ef4_oword_t rx_flush_descq;

	FUNC0(rx_flush_descq,
			     FRF_AZ_RX_FLUSH_DESCQ_CMD, 1,
			     FRF_AZ_RX_FLUSH_DESCQ,
			     FUNC1(rx_queue));
	FUNC2(efx, &rx_flush_descq, FR_AZ_RX_FLUSH_DESCQ);
}