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
struct tsi108_prv_data {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSI108_EC_RXCTRL ; 
 int TSI108_EC_RXCTRL_GO ; 
 int TSI108_EC_RXCTRL_QUEUE0 ; 
 int /*<<< orphan*/  TSI108_EC_RXQ_PTRHIGH ; 
 int TSI108_EC_RXQ_PTRHIGH_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct tsi108_prv_data * data, struct net_device *dev)
{
	FUNC0(TSI108_EC_RXQ_PTRHIGH,
			     TSI108_EC_RXQ_PTRHIGH_VALID);

	FUNC0(TSI108_EC_RXCTRL, TSI108_EC_RXCTRL_GO
			     | TSI108_EC_RXCTRL_QUEUE0);
}