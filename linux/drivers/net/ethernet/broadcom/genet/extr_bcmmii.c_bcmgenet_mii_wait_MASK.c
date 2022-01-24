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
struct bcmgenet_priv {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int HZ ; 
 int MDIO_START_BUSY ; 
 int /*<<< orphan*/  UMAC_MDIO_CMD ; 
 int FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(void *wait_func_data)
{
	struct bcmgenet_priv *priv = wait_func_data;

	FUNC1(priv->wq,
			   !(FUNC0(priv, UMAC_MDIO_CMD)
			   & MDIO_START_BUSY),
			   HZ / 100);
	return 0;
}