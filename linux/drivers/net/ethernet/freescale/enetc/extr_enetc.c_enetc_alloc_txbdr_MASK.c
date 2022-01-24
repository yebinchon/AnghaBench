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
typedef  union enetc_tx_bd {int dummy; } enetc_tx_bd ;
struct enetc_tx_swbd {int dummy; } ;
struct enetc_bdr {int bd_count; scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/  tx_swbd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct enetc_bdr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct enetc_bdr *txr)
{
	int err;

	txr->tx_swbd = FUNC2(txr->bd_count * sizeof(struct enetc_tx_swbd));
	if (!txr->tx_swbd)
		return -ENOMEM;

	err = FUNC0(txr, sizeof(union enetc_tx_bd));
	if (err) {
		FUNC1(txr->tx_swbd);
		return err;
	}

	txr->next_to_clean = 0;
	txr->next_to_use = 0;

	return 0;
}