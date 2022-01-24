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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct enc28j60_net {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICMD ; 
 int MICMD_MIIRD ; 
 int /*<<< orphan*/  MIRDL ; 
 int /*<<< orphan*/  MIREGADR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct enc28j60_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct enc28j60_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct enc28j60_net*) ; 

__attribute__((used)) static u16 FUNC5(struct enc28j60_net *priv, u8 address)
{
	u16 ret;

	FUNC0(&priv->lock);
	/* set the PHY register address */
	FUNC2(priv, MIREGADR, address);
	/* start the register read operation */
	FUNC2(priv, MICMD, MICMD_MIIRD);
	/* wait until the PHY read completes */
	FUNC4(priv);
	/* quit reading */
	FUNC2(priv, MICMD, 0x00);
	/* return the data */
	ret = FUNC3(priv, MIRDL);
	FUNC1(&priv->lock);

	return ret;
}