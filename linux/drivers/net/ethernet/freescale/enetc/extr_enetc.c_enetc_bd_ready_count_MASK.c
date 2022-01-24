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
struct enetc_bdr {int bd_count; int /*<<< orphan*/  tcir; } ;

/* Variables and functions */
 int ENETC_TBCIR_IDX_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct enetc_bdr *tx_ring, int ci)
{
	int pi = FUNC0(tx_ring->tcir) & ENETC_TBCIR_IDX_MASK;

	return pi >= ci ? pi - ci : tx_ring->bd_count - ci + pi;
}