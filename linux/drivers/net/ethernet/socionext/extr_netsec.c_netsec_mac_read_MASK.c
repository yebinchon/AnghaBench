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
typedef  int u32 ;
struct netsec_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_REG_CMD ; 
 int /*<<< orphan*/  MAC_REG_DATA ; 
 int /*<<< orphan*/  NETSEC_GMAC_CMD_ST_BUSY ; 
 int NETSEC_GMAC_CMD_ST_READ ; 
 int FUNC0 (struct netsec_priv*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct netsec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netsec_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct netsec_priv *priv, u32 addr, u32 *read)
{
	int ret;

	FUNC2(priv, MAC_REG_CMD, addr | NETSEC_GMAC_CMD_ST_READ);
	ret = FUNC1(priv,
				     MAC_REG_CMD, NETSEC_GMAC_CMD_ST_BUSY);
	if (ret)
		return ret;

	*read = FUNC0(priv, MAC_REG_DATA);

	return 0;
}