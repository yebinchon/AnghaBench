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
struct xgbe_hw_if {int /*<<< orphan*/  (* config_rx_mode ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {struct xgbe_hw_if hw_if; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct xgbe_prv_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct xgbe_prv_data *pdata = FUNC1(netdev);
	struct xgbe_hw_if *hw_if = &pdata->hw_if;

	FUNC0("-->xgbe_set_rx_mode\n");

	hw_if->config_rx_mode(pdata);

	FUNC0("<--xgbe_set_rx_mode\n");
}