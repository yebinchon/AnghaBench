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
struct unimac_mdio_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_CMD ; 
 unsigned int MDIO_START_BUSY ; 
 unsigned int FUNC0 (struct unimac_mdio_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct unimac_mdio_priv *priv)
{
	return FUNC0(priv, MDIO_CMD) & MDIO_START_BUSY;
}