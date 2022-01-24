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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct enc28j60_net {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIREGADR ; 
 int /*<<< orphan*/  MIWRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct enc28j60_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct enc28j60_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct enc28j60_net*) ; 

__attribute__((used)) static int FUNC5(struct enc28j60_net *priv, u8 address, u16 data)
{
	int ret;

	FUNC0(&priv->lock);
	/* set the PHY register address */
	FUNC2(priv, MIREGADR, address);
	/* write the PHY data */
	FUNC3(priv, MIWRL, data);
	/* wait until the PHY write completes and return */
	ret = FUNC4(priv);
	FUNC1(&priv->lock);

	return ret;
}