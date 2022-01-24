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
struct wcn36xx {int /*<<< orphan*/  dxe_rx_h_ch; int /*<<< orphan*/  dxe_rx_l_ch; int /*<<< orphan*/  dxe_tx_h_ch; int /*<<< orphan*/  dxe_tx_l_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct wcn36xx *wcn)
{
	FUNC0(&wcn->dxe_tx_l_ch);
	FUNC0(&wcn->dxe_tx_h_ch);
	FUNC0(&wcn->dxe_rx_l_ch);
	FUNC0(&wcn->dxe_rx_h_ch);
}