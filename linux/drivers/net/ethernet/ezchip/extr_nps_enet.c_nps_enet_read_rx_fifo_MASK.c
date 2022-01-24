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
typedef  int u32 ;
struct nps_enet_priv {scalar_t__ regs_base; } ;
struct net_device {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (unsigned long,int) ; 
 scalar_t__ NPS_ENET_REG_RX_BUF ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 struct nps_enet_priv* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct nps_enet_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int*) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev,
				  unsigned char *dst, u32 length)
{
	struct nps_enet_priv *priv = FUNC3(ndev);
	s32 i, last = length & (sizeof(u32) - 1);
	u32 *reg = (u32 *)dst, len = length / sizeof(u32);
	bool dst_is_aligned = FUNC0((unsigned long)dst, sizeof(u32));

	/* In case dst is not aligned we need an intermediate buffer */
	if (dst_is_aligned) {
		FUNC1(priv->regs_base + NPS_ENET_REG_RX_BUF, reg, len);
		reg += len;
	} else { /* !dst_is_aligned */
		for (i = 0; i < len; i++, reg++) {
			u32 buf = FUNC4(priv, NPS_ENET_REG_RX_BUF);

			FUNC5(buf, reg);
		}
	}
	/* copy last bytes (if any) */
	if (last) {
		u32 buf;

		FUNC1(priv->regs_base + NPS_ENET_REG_RX_BUF, &buf, 1);
		FUNC2((u8 *)reg, &buf, last);
	}
}